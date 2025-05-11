<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Workspace;
use App\Models\Warehouse;
use App\Models\WarehouseItem;
use App\Models\InventoryItem;
use App\Models\Utility;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;

class WarehouseController extends Controller
{
    /**
     * Display a listing of warehouses.
     */
    public function index($slug)
    {
        $currentWorkspace = Workspace::where('slug', $slug)->first();
        if (!$currentWorkspace) {
            return redirect()->back()->with('error', __('Workspace not found.'));
        }

        return view('warehouses.index', compact('currentWorkspace'));
    }

    /**
     * Get warehouses data for DataTables.
     */
    public function getWarehousesData(Request $request, $slug)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        
        $warehouses = Warehouse::where('workspace_id', $currentWorkspace->id);
        
        return DataTables::of($warehouses)
            ->addColumn('action', function ($warehouse) use ($currentWorkspace) {
                // მხოლოდ Owner-ს უნდა ჰქონდეს მოქმედებების უფლება (შეცვალეთ საჭიროებისამებრ)
                $canManage = Auth::guard('web')->check(); // ნებისმიერი ავტორიზებული მომხმარებელი (არა client)

                if ($canManage) {
                    $editUrl = route('warehouses.edit', [$currentWorkspace->slug, $warehouse->id]);
                    $deleteRoute = route('warehouses.destroy', [$currentWorkspace->slug, $warehouse->id]);
                    $viewItemsUrl = route('warehouses.items', [$currentWorkspace->slug, $warehouse->id]);

                    $editButton = '<div class="action-btn bg-info ms-2">
                                     <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center" 
                                        data-ajax-popup="true" data-size="lg" data-url="' . $editUrl . '" 
                                        data-title="' . __('Edit Warehouse') . '" data-toggle="tooltip" title="' . __('Edit') . '">
                                         <i class="ti ti-pencil text-white"></i>
                                     </a>
                                  </div>';
                    
                    $deleteButton = '<div class="action-btn bg-danger ms-2">
                                       <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center delete-warehouse" 
                                          data-form-id="delete-form-'. $warehouse->id .'" 
                                          data-toggle="tooltip" title="' . __('Delete') . '">
                                           <i class="ti ti-trash text-white"></i>
                                       </a>
                                       <form id="delete-form-' . $warehouse->id . '" action="' . $deleteRoute . '" method="POST" style="display: none;">
                                           ' . csrf_field() . ' 
                                           ' . method_field('DELETE') . ' 
                                       </form>
                                    </div>';
                    
                    $viewItemsButton = '<div class="action-btn bg-success ms-2">
                                          <a href="' . $viewItemsUrl . '" class="mx-3 btn btn-sm d-inline-flex align-items-center" 
                                             data-toggle="tooltip" title="' . __('View Items') . '">
                                              <i class="ti ti-package text-white"></i>
                                          </a>
                                       </div>';

                    return $viewItemsButton . $editButton . $deleteButton;
                }
                return '-';
            })
            ->editColumn('status', function ($warehouse) {
                if($warehouse->status == 'active'){
                    return '<span class="badge bg-success p-2 px-3 rounded">' . __('Active') . '</span>';
                } else {
                    return '<span class="badge bg-danger p-2 px-3 rounded">' . __('Inactive') . '</span>';
                }
            })
            ->editColumn('address', function($warehouse) {
                return !empty($warehouse->address) ? '<div class="address-cell">'.$warehouse->address.'</div>' : '-';
            })
            ->addColumn('items_count', function($warehouse) {
                $itemsCount = $warehouse->warehouseItems()->count();
                return $itemsCount;
            })
            ->rawColumns(['action', 'status', 'address'])
            ->make(true);
    }

    /**
     * Show the form for creating a new warehouse.
     */
    public function create($slug)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        if (!$currentWorkspace || $currentWorkspace->created_by != Auth::id()) {
            // Check if user is the owner or admin
            if(Auth::user()->type != 'admin') {
                return redirect()->route('warehouses.index', $slug)->with('error', __('Permission denied.'));
            }
        }
        
        return view('warehouses.create', compact('currentWorkspace'));
    }

    /**
     * Store a newly created warehouse in storage.
     */
    public function store(Request $request, $slug)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        if (!$currentWorkspace || $currentWorkspace->created_by != $user->id) {
            if($user->type != 'admin') {
                return redirect()->back()->with('error', __('Permission denied.'));
            }
        }

        $validator = Validator::make(
            $request->all(), [
                'name' => 'required|string|max:255',
                'code' => 'nullable|string|max:50|unique:warehouses,code,NULL,id,workspace_id,'.$currentWorkspace->id,
                'address' => 'nullable|string',
                'description' => 'nullable|string',
                'status' => 'required|in:active,inactive',
            ]
        );

        if($validator->fails())
        {
            $messages = $validator->getMessageBag();
            return redirect()->back()->with('error', $messages->first());
        }

        $warehouse = new Warehouse();
        $warehouse->name = $request->input('name');
        $warehouse->code = $request->input('code');
        $warehouse->address = $request->input('address');
        $warehouse->description = $request->input('description');
        $warehouse->status = $request->input('status');
        $warehouse->workspace_id = $currentWorkspace->id;
        $warehouse->created_by = $user->id;
        $warehouse->save();

        return redirect()->route('warehouses.index', $slug)->with('success', __('Warehouse created successfully.'));
    }

    /**
     * Show the form for editing the specified warehouse.
     */
    public function edit($slug, $id)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $id)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse not found.'));
        }

        if ($user->type != 'admin' && $currentWorkspace->created_by != $user->id) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Permission denied.'));
        }

        return view('warehouses.create', compact('currentWorkspace', 'warehouse'));
    }

    /**
     * Update the specified warehouse in storage.
     */
    public function update(Request $request, $slug, $id)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $id)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse not found.'));
        }

        if ($user->type != 'admin' && $currentWorkspace->created_by != $user->id) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Permission denied.'));
        }

        $validator = Validator::make(
            $request->all(), [
                'name' => 'required|string|max:255',
                'code' => 'nullable|string|max:50|unique:warehouses,code,'.$warehouse->id.',id,workspace_id,'.$currentWorkspace->id,
                'address' => 'nullable|string',
                'description' => 'nullable|string',
                'status' => 'required|in:active,inactive',
            ]
        );

        if($validator->fails())
        {
            $messages = $validator->getMessageBag();
            return redirect()->back()->with('error', $messages->first());
        }

        $warehouse->name = $request->input('name');
        $warehouse->code = $request->input('code');
        $warehouse->address = $request->input('address');
        $warehouse->description = $request->input('description');
        $warehouse->status = $request->input('status');
        $warehouse->save();

        return redirect()->route('warehouses.index', $slug)->with('success', __('Warehouse updated successfully.'));
    }

    /**
     * Remove the specified warehouse from storage.
     */
    public function destroy($slug, $id)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $id)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse not found.'));
        }

        if ($user->type != 'admin' && $currentWorkspace->created_by != $user->id) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Permission denied.'));
        }

        // Check if warehouse has items
        $itemsCount = $warehouse->warehouseItems()->count();
        if ($itemsCount > 0) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse cannot be deleted because it contains items.'));
        }

        $warehouse->delete();

        return redirect()->route('warehouses.index', $slug)->with('success', __('Warehouse deleted successfully.'));
    }

    /**
     * Display the items in a warehouse.
     */
    public function items($slug, $id)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $id)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse not found.'));
        }

        return view('warehouses.items', compact('currentWorkspace', 'warehouse'));
    }

    /**
     * Get items in a warehouse for DataTables.
     */
    public function getWarehouseItemsData(Request $request, $slug, $warehouseId)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $warehouseId)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return response()->json(['error' => 'Warehouse not found'], 404);
        }

        $warehouseItems = WarehouseItem::where('warehouse_id', $warehouse->id)
            ->with('inventoryItem')
            ->where('workspace_id', $currentWorkspace->id);

        return DataTables::of($warehouseItems)
            ->addColumn('item_name', function ($warehouseItem) {
                return $warehouseItem->inventoryItem ? $warehouseItem->inventoryItem->name : '-';
            })
            ->addColumn('category', function ($warehouseItem) {
                return $warehouseItem->inventoryItem && $warehouseItem->inventoryItem->category ? 
                    $warehouseItem->inventoryItem->category->name : '-';
            })
            ->addColumn('action', function ($warehouseItem) use ($currentWorkspace, $warehouse) {
                $canManage = Auth::guard('web')->check();

                if ($canManage) {
                    $editUrl = route('warehouses.items.edit', [$currentWorkspace->slug, $warehouse->id, $warehouseItem->id]);
                    $deleteRoute = route('warehouses.items.destroy', [$currentWorkspace->slug, $warehouse->id, $warehouseItem->id]);

                    $editButton = '<div class="action-btn bg-info ms-2">
                                     <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center" 
                                        data-ajax-popup="true" data-size="lg" data-url="' . $editUrl . '" 
                                        data-title="' . __('Edit Item Quantity') . '" data-toggle="tooltip" title="' . __('Edit') . '">
                                         <i class="ti ti-pencil text-white"></i>
                                     </a>
                                  </div>';
                    
                    $deleteButton = '<div class="action-btn bg-danger ms-2">
                                       <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center delete-warehouse-item" 
                                          data-form-id="delete-form-'. $warehouseItem->id .'" 
                                          data-toggle="tooltip" title="' . __('Remove') . '">
                                           <i class="ti ti-trash text-white"></i>
                                       </a>
                                       <form id="delete-form-' . $warehouseItem->id . '" action="' . $deleteRoute . '" method="POST" style="display: none;">
                                           ' . csrf_field() . ' 
                                           ' . method_field('DELETE') . ' 
                                       </form>
                                    </div>';

                    return $editButton . $deleteButton;
                }
                return '-';
            })
            ->rawColumns(['action'])
            ->make(true);
    }

    /**
     * Show form to add items to a warehouse.
     */
    public function createItem($slug, $warehouseId)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $warehouseId)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse not found.'));
        }

        // Get all inventory items for the dropdown
        $inventoryItems = InventoryItem::where('workspace_id', $currentWorkspace->id)
            ->orderBy('name')
            ->get();

        // Get items already in the warehouse to exclude from dropdown
        $existingItemIds = WarehouseItem::where('warehouse_id', $warehouse->id)
            ->pluck('inventory_item_id')
            ->toArray();

        return view('warehouses.add_item', compact('currentWorkspace', 'warehouse', 'inventoryItems', 'existingItemIds'));
    }

    /**
     * Store an item in a warehouse.
     */
    public function storeItem(Request $request, $slug, $warehouseId)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $warehouseId)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse not found.'));
        }

        $validator = Validator::make(
            $request->all(), [
                'inventory_item_id' => 'required|exists:inventory_items,id',
                'quantity' => 'required|integer|min:0',
                'note' => 'nullable|string',
            ]
        );

        if($validator->fails())
        {
            $messages = $validator->getMessageBag();
            return redirect()->back()->with('error', $messages->first());
        }

        // Check if item already exists in this warehouse
        $existingItem = WarehouseItem::where('warehouse_id', $warehouse->id)
            ->where('inventory_item_id', $request->input('inventory_item_id'))
            ->first();

        if ($existingItem) {
            return redirect()->back()->with('error', __('This item already exists in the warehouse. Edit the existing entry instead.'));
        }

        $warehouseItem = new WarehouseItem();
        $warehouseItem->warehouse_id = $warehouse->id;
        $warehouseItem->inventory_item_id = $request->input('inventory_item_id');
        $warehouseItem->quantity = $request->input('quantity');
        $warehouseItem->note = $request->input('note');
        $warehouseItem->workspace_id = $currentWorkspace->id;
        $warehouseItem->created_by = Auth::id();
        $warehouseItem->save();

        return redirect()->route('warehouses.items', [$slug, $warehouse->id])->with('success', __('Item added to warehouse successfully.'));
    }

    /**
     * Show form to edit an item in a warehouse.
     */
    public function editItem($slug, $warehouseId, $itemId)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $warehouseId)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse not found.'));
        }

        $warehouseItem = WarehouseItem::where('id', $itemId)
            ->where('warehouse_id', $warehouse->id)
            ->with('inventoryItem')
            ->first();

        if (!$warehouseItem) {
            return redirect()->route('warehouses.items', [$slug, $warehouse->id])->with('error', __('Item not found in this warehouse.'));
        }

        return view('warehouses.edit_item', compact('currentWorkspace', 'warehouse', 'warehouseItem'));
    }

    /**
     * Update an item in a warehouse.
     */
    public function updateItem(Request $request, $slug, $warehouseId, $itemId)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $warehouseId)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse not found.'));
        }

        $warehouseItem = WarehouseItem::where('id', $itemId)
            ->where('warehouse_id', $warehouse->id)
            ->first();

        if (!$warehouseItem) {
            return redirect()->route('warehouses.items', [$slug, $warehouse->id])->with('error', __('Item not found in this warehouse.'));
        }

        $validator = Validator::make(
            $request->all(), [
                'quantity' => 'required|integer|min:0',
                'note' => 'nullable|string',
            ]
        );

        if($validator->fails())
        {
            $messages = $validator->getMessageBag();
            return redirect()->back()->with('error', $messages->first());
        }

        $warehouseItem->quantity = $request->input('quantity');
        $warehouseItem->note = $request->input('note');
        $warehouseItem->save();

        return redirect()->route('warehouses.items', [$slug, $warehouse->id])->with('success', __('Item updated successfully.'));
    }

    /**
     * Remove an item from a warehouse.
     */
    public function destroyItem($slug, $warehouseId, $itemId)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        $warehouse = Warehouse::where('id', $warehouseId)->where('workspace_id', $currentWorkspace->id)->first();

        if (!$warehouse) {
            return redirect()->route('warehouses.index', $slug)->with('error', __('Warehouse not found.'));
        }

        $warehouseItem = WarehouseItem::where('id', $itemId)
            ->where('warehouse_id', $warehouse->id)
            ->first();

        if (!$warehouseItem) {
            return redirect()->route('warehouses.items', [$slug, $warehouse->id])->with('error', __('Item not found in this warehouse.'));
        }

        $warehouseItem->delete();

        return redirect()->route('warehouses.items', [$slug, $warehouse->id])->with('success', __('Item removed from warehouse successfully.'));
    }
}
