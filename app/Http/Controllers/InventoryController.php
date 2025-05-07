<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Workspace;
use App\Models\InventoryItem;
use App\Models\Utility;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;

class InventoryController extends Controller
{
    public function index($slug)
    {
        $currentWorkspace = Workspace::where('slug', $slug)->first();
        if (!$currentWorkspace) {
            return redirect()->back()->with('error', __('Workspace not found.'));
        }

        // We no longer need to fetch data here, it will be fetched via AJAX
        return view('inventory.index', compact('currentWorkspace'));
    }

    /**
     * Get Inventory data for DataTables.
     */
    public function getInventoryData(Request $request, $slug)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);

        if (!$currentWorkspace) {
            return response()->json(['error' => 'Workspace not found'], 404);
        }

        // Start building the query
        $query = InventoryItem::where('workspace_id', $currentWorkspace->id);

        // Apply filters from the request
        if ($request->filled('category')) {
            $query->where('category', $request->input('category'));
        }
        if ($request->filled('status_filter')) {
            $query->where('status', $request->input('status_filter'));
        }
        if ($request->filled('start_date') && $request->filled('end_date')) {
            $startDate = $request->input('start_date');
            $endDate = $request->input('end_date');
            // Ensure dates are in the correct format if needed, e.g., using Carbon::parse()
             if (\DateTime::createFromFormat('Y-m-d', $startDate) !== false && \DateTime::createFromFormat('Y-m-d', $endDate) !== false) {
                 $query->whereBetween('updated_at', [$startDate . ' 00:00:00', $endDate . ' 23:59:59']);
             }
        }

        // Apply sorting (comes from DataTables)
        if ($request->has('order')) {
            $orderSettings = $request->input('order')[0];
            $columnIndex = $orderSettings['column'];
            $columnName = $request->input('columns')[$columnIndex]['name']; // Use 'name' from columns definition
            $direction = $orderSettings['dir'];

            if($columnName) { // Only order if a valid column name is provided
                $query->orderBy($columnName, $direction);
            }
        } else {
            // Default sorting if none provided
            $query->orderBy('created_at', 'desc');
        }

        // Use DataTables package to handle processing and response formatting
        return DataTables::of($query)
            ->addColumn('action', function ($item) use ($currentWorkspace, $user) {
                // Only Owner should see actions (adjust permission check as needed)
                // Refined permission check - Now allows any authenticated 'web' user
                // $canManage = $user->type == 'admin' || ($currentWorkspace->permission == 'Owner' && $user->id == $item->created_by) || $user->id == $currentWorkspace->created_by;
                $canManage = Auth::guard('web')->check(); // Allow any logged-in user (not client)

                // Log the permission check result for debugging
                Log::debug("Inventory Action Check: User ID: {$user->id}, User Type: {$user->type}, Workspace ID: {$currentWorkspace->id}, Workspace Creator: {$currentWorkspace->created_by}, Workspace Permission: {$currentWorkspace->permission}, Item ID: {$item->id}, Item Creator: {$item->created_by}, Can Manage: " . ($canManage ? 'true' : 'false'));

                if ($canManage) {
                    // Use the inventory.edit route to generate the URL for the modal
                    $editUrl = route('inventory.edit', [$currentWorkspace->slug, $item->id]);
                    // Use the inventory.destroy route for the delete form action
                    $deleteRoute = route('inventory.destroy', [$currentWorkspace->slug, $item->id]);

                    // Existing action buttons structure
                    $editButton = '<div class="action-btn bg-info ms-2">
                                        <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center" 
                                           data-ajax-popup="true" data-size="lg" data-url="' . $editUrl . '" 
                                           data-title="' . __('Edit Item') . '" data-toggle="tooltip" title="' . __('Edit') . '">
                                            <i class="ti ti-pencil text-white"></i>
                                        </a>
                                    </div>';
                    
                    $deleteButton = '<div class="action-btn bg-danger ms-2">
                                        <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center delete-inventory-item" 
                                           data-form-id="delete-form-'. $item->id .'" 
                                           data-toggle="tooltip" title="' . __('Delete') . '">
                                            <i class="ti ti-trash text-white"></i>
                                        </a>
                                        <form id="delete-form-' . $item->id . '" action="' . $deleteRoute . '" method="POST" style="display: none;">
                                            ' . csrf_field() . ' 
                                            ' . method_field('DELETE') . ' 
                                        </form>
                                    </div>';

                    return $editButton . $deleteButton;
                }
                return '-'; // Or empty string if no actions allowed
            })
            ->editColumn('unit_price', function ($item) {
                // Format price using Utility class (assuming it has a currencyFormat method)
                // return Utility::priceFormat($item->unit_price);
                 return $item->unit_price ? number_format($item->unit_price, 2) : '-'; // Simple formatting for now
            })
             ->editColumn('status', function ($item) {
                 if($item->status == 'in_stock'){
                    return '<span class="badge bg-success p-2 px-3 rounded">' . __('In Stock') . '</span>';
                 } elseif ($item->status == 'out_of_stock') {
                    return '<span class="badge bg-danger p-2 px-3 rounded">' . __('Out Of Stock') . '</span>';
                 } else {
                     return '<span class="badge bg-warning p-2 px-3 rounded">' . __(ucfirst(str_replace('_', ' ', $item->status))) . '</span>';
                 }
            })
            ->editColumn('updated_at', function ($item) {
                return $item->updated_at->format('Y-m-d H:i:s'); // Format date
            })
             ->editColumn('created_by', function ($item) {
                // Fetch and return the creator's name if needed, requires a relationship on the model
                 // return $item->creator->name ?? '-';
                 return $item->created_by; // Placeholder
            })
            ->rawColumns(['action', 'status']) // Tell DataTables not to escape HTML in these columns
            ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create($slug)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        if (!$currentWorkspace || $currentWorkspace->created_by != Auth::id()) {
             // Check if user is the owner or admin
            if(Auth::user()->type != 'admin') {
                 return redirect()->route('inventory.index', $slug)->with('error', __('Permission denied.'));
            }
        }
        // Optionally load categories or other data needed for the form
        return view('inventory.create', compact('currentWorkspace'));
    }

    /**
     * Store a newly created resource in storage.
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
                               'quantity' => 'required|integer|min:0',
                               'unit_price' => 'nullable|numeric|min:0',
                               'category' => 'nullable|string|max:255',
                               'description' => 'nullable|string',
                           ]
        );

        if($validator->fails())
        {
            $messages = $validator->getMessageBag();
            return redirect()->back()->with('error', $messages->first());
        }

        $item = new InventoryItem();
        $item->name = $request->input('name');
        $item->description = $request->input('description');
        $item->category = $request->input('category');
        $item->quantity = $request->input('quantity');
        $item->unit_price = $request->input('unit_price');
        $item->status = $request->input('quantity') > 0 ? 'in_stock' : 'out_of_stock'; // Auto-set status
        $item->workspace_id = $currentWorkspace->id;
        $item->created_by = $user->id;
        $item->save();

        return redirect()->route('inventory.index', $slug)->with('success', __('Inventory item created successfully.'));
    }

    // Add edit, update, destroy methods later
    public function edit($slug, InventoryItem $item) // Use route model binding
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);

        // Authorization: Ensure the item belongs to the current workspace and user has permission
        if (!$currentWorkspace || $item->workspace_id != $currentWorkspace->id) {
            return redirect()->route('inventory.index', $slug)->with('error', __('Inventory item not found in this workspace.'));
        }
        if ($user->type != 'admin' && $currentWorkspace->created_by != $user->id && !($currentWorkspace->permission == 'Owner' && $item->created_by == $user->id)) {
             return redirect()->route('inventory.index', $slug)->with('error', __('Permission denied.'));
        }

        // Reuse the create view for editing, passing the item data
        return view('inventory.create', compact('currentWorkspace', 'item'));
    }

    public function update(Request $request, $slug, InventoryItem $item)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);

        // Authorization: Ensure the item belongs to the current workspace and user has permission
        if (!$currentWorkspace || $item->workspace_id != $currentWorkspace->id) {
            return redirect()->route('inventory.index', $slug)->with('error', __('Inventory item not found in this workspace.'));
        }
        if ($user->type != 'admin' && $currentWorkspace->created_by != $user->id && !($currentWorkspace->permission == 'Owner' && $item->created_by == $user->id)) {
            return redirect()->route('inventory.index', $slug)->with('error', __('Permission denied.'));
        }

        $validator = Validator::make(
            $request->all(), [
                               'name' => 'required|string|max:255',
                               'quantity' => 'required|integer|min:0',
                               'unit_price' => 'nullable|numeric|min:0',
                               'category' => 'nullable|string|max:255',
                               'description' => 'nullable|string',
                               // Optionally add validation for status if it becomes editable
                           ]
        );

        if($validator->fails())
        {
            $messages = $validator->getMessageBag();
             // Redirect back to the edit form on validation error
             // Important: Need to redirect back to the edit route, not just back()
             return redirect()->route('inventory.edit', [$slug, $item->id])
                              ->withErrors($validator)
                              ->withInput(); // Keep old input
            // return redirect()->back()->with('error', $messages->first()); // Original behaviour might lose context
        }

        // Update item fields
        $item->name = $request->input('name');
        $item->description = $request->input('description');
        $item->category = $request->input('category');
        $item->quantity = $request->input('quantity');
        $item->unit_price = $request->input('unit_price');
        // Automatically update status based on quantity (can be adjusted if status needs manual control)
        $item->status = $request->input('quantity') > 0 ? 'in_stock' : 'out_of_stock';
        // workspace_id and created_by should generally not change on update
        $item->save();

        return redirect()->route('inventory.index', $slug)->with('success', __('Inventory item updated successfully.'));

    }

    // Add destroy method later
    public function destroy($slug, InventoryItem $item)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);

        // Authorization: Ensure the item belongs to the current workspace and user has permission
        if (!$currentWorkspace || $item->workspace_id != $currentWorkspace->id) {
             return redirect()->route('inventory.index', $slug)->with('error', __('Inventory item not found in this workspace.'));
        }
         // Use the same permission check as edit/update or refine as needed
        if ($user->type != 'admin' && $currentWorkspace->created_by != $user->id && !($currentWorkspace->permission == 'Owner' && $item->created_by == $user->id)) {
             return redirect()->route('inventory.index', $slug)->with('error', __('Permission denied.'));
        }

        try {
            $item->delete();
            return redirect()->route('inventory.index', $slug)->with('success', __('Inventory item deleted successfully.'));
        } catch (\Exception $e) {
             Log::error("Error deleting inventory item: " . $e->getMessage());
             return redirect()->route('inventory.index', $slug)->with('error', __('Failed to delete inventory item.'));
        }
    }

}
