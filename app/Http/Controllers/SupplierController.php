<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Workspace;
use App\Models\Supplier;
use App\Models\Utility;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use Carbon\Carbon;

class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($slug)
    {
        $currentWorkspace = Workspace::where('slug', $slug)->first();
        if (!$currentWorkspace) {
            return redirect()->back()->with('error', __('Workspace not found.'));
        }

        // We will fetch data via AJAX
        return view('suppliers.index', compact('currentWorkspace'));
    }

    /**
     * Get Suppliers data for DataTables.
     */
    public function getSuppliersData(Request $request, $slug)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        
        $suppliers = Supplier::where('workspace_id', $currentWorkspace->id);
        
        return DataTables::of($suppliers)
            ->addColumn('actions', function ($supplier) use ($currentWorkspace) {
                $actionBtn = '<div class="action-btn bg-info ms-2">
                                <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center" data-ajax-popup="true" data-size="lg" 
                                   data-title="'.__('Edit Supplier').'" data-url="'.route('suppliers.edit', [$currentWorkspace->slug, $supplier->id]).'" 
                                   data-toggle="tooltip" title="'.__('Edit').'">
                                    <i class="ti ti-pencil text-white"></i>
                                </a>
                            </div>
                            <div class="action-btn bg-danger ms-2">
                                <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center delete-supplier" 
                                   data-supplier-id="'.$supplier->id.'" data-toggle="tooltip" title="'.__('Delete').'">
                                    <i class="ti ti-trash text-white"></i>
                                </a>
                            </div>';
                return $actionBtn;
            })
            ->editColumn('address', function($supplier) {
                return !empty($supplier->address) ? '<div class="address-cell">'.$supplier->address.'</div>' : '-';
            })
            ->rawColumns(['actions', 'address'])
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
                return redirect()->route('suppliers.index', $slug)->with('error', __('Permission denied.'));
            }
        }
        
        return view('suppliers.create', compact('currentWorkspace'));
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
                'legal_name' => 'required|string|max:255',
                'tax_number' => 'required|string|max:50',
                'address' => 'nullable|string',
                'phone' => 'nullable|string|max:20',
                'email' => 'nullable|email|max:255',
            ]
        );

        if($validator->fails())
        {
            $messages = $validator->getMessageBag();
            return redirect()->back()->with('error', $messages->first());
        }

        $supplier = new Supplier();
        $supplier->name = $request->input('name');
        $supplier->legal_name = $request->input('legal_name');
        $supplier->tax_number = $request->input('tax_number');
        $supplier->address = $request->input('address');
        $supplier->phone = $request->input('phone');
        $supplier->email = $request->input('email');
        $supplier->created_by = $user->id;
        $supplier->workspace_id = $currentWorkspace->id;
        $supplier->save();

        return redirect()->route('suppliers.index', $slug)->with('success', __('Supplier created successfully.'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($slug, Supplier $supplier)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);

        // Authorization: Ensure the supplier belongs to the current workspace and user has permission
        if (!$currentWorkspace || $supplier->workspace_id != $currentWorkspace->id) {
            return redirect()->route('suppliers.index', $slug)->with('error', __('Supplier not found in this workspace.'));
        }
        if ($user->type != 'admin' && $currentWorkspace->created_by != $user->id && !($currentWorkspace->permission == 'Owner' && $supplier->created_by == $user->id)) {
            return redirect()->route('suppliers.index', $slug)->with('error', __('Permission denied.'));
        }

        // Reuse the create view for editing, passing the supplier data
        return view('suppliers.create', compact('currentWorkspace', 'supplier'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $slug, Supplier $supplier)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);

        // Authorization: Ensure the supplier belongs to the current workspace and user has permission
        if (!$currentWorkspace || $supplier->workspace_id != $currentWorkspace->id) {
            return redirect()->route('suppliers.index', $slug)->with('error', __('Supplier not found in this workspace.'));
        }
        if ($user->type != 'admin' && $currentWorkspace->created_by != $user->id && !($currentWorkspace->permission == 'Owner' && $supplier->created_by == $user->id)) {
            return redirect()->route('suppliers.index', $slug)->with('error', __('Permission denied.'));
        }

        $validator = Validator::make(
            $request->all(), [
                'name' => 'required|string|max:255',
                'legal_name' => 'required|string|max:255',
                'tax_number' => 'required|string|max:50',
                'address' => 'nullable|string',
                'phone' => 'nullable|string|max:20',
                'email' => 'nullable|email|max:255',
            ]
        );

        if($validator->fails())
        {
            $messages = $validator->getMessageBag();
            return redirect()->route('suppliers.edit', [$slug, $supplier->id])
                ->withErrors($validator)
                ->withInput();
        }

        // Update supplier fields
        $supplier->name = $request->input('name');
        $supplier->legal_name = $request->input('legal_name');
        $supplier->tax_number = $request->input('tax_number');
        $supplier->address = $request->input('address');
        $supplier->phone = $request->input('phone');
        $supplier->email = $request->input('email');
        $supplier->save();

        return redirect()->route('suppliers.index', $slug)->with('success', __('Supplier updated successfully.'));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($slug, Supplier $supplier)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);

        // Authorization: Ensure the supplier belongs to the current workspace and user has permission
        if (!$currentWorkspace || $supplier->workspace_id != $currentWorkspace->id) {
            return redirect()->route('suppliers.index', $slug)->with('error', __('Supplier not found in this workspace.'));
        }
        if ($user->type != 'admin' && $currentWorkspace->created_by != $user->id && !($currentWorkspace->permission == 'Owner' && $supplier->created_by == $user->id)) {
            return redirect()->route('suppliers.index', $slug)->with('error', __('Permission denied.'));
        }

        try {
            $supplier->delete();
            return redirect()->route('suppliers.index', $slug)->with('success', __('Supplier deleted successfully.'));
        } catch (\Exception $e) {
            Log::error("Error deleting supplier: " . $e->getMessage());
            return redirect()->route('suppliers.index', $slug)->with('error', __('Failed to delete supplier.'));
        }
    }
}
