<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Workspace;
use App\Models\InventoryCategory;
use App\Models\Utility;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class InventoryCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request, $slug)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        if (!$currentWorkspace) {
            return response()->json(['error' => 'Workspace not found'], 404);
        }

        $validator = Validator::make(
            $request->all(), [
                'name' => 'required|string|max:255',
            ]
        );

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()->first()], 400);
        }

        $category = new InventoryCategory();
        $category->name = $request->name;
        $category->description = $request->description ?? '';
        $category->workspace_id = $currentWorkspace->id;
        $category->created_by = Auth::id();
        $category->save();

        return response()->json([
            'success' => true,
            'id' => $category->id,
            'name' => $category->name
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $slug, $id)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        
        if (!$currentWorkspace) {
            return response()->json(['error' => 'Workspace not found'], 404);
        }

        $category = InventoryCategory::where('workspace_id', $currentWorkspace->id)
            ->where('id', $id)
            ->first();

        if (!$category) {
            return response()->json(['error' => 'Category not found'], 404);
        }

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
        ]);

        if($validator->fails()) {
            return response()->json(['error' => $validator->errors()->first()], 422);
        }

        $category->name = $request->input('name');
        $category->description = $request->input('description');
        $category->save();

        return response()->json([
            'success' => true,
            'message' => __('Category updated successfully.'),
            'category' => [
                'id' => $category->id,
                'name' => $category->name
            ]
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($slug, $id)
    {
        $user = Auth::user();
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        
        if (!$currentWorkspace) {
            return response()->json(['error' => 'Workspace not found'], 404);
        }

        $category = InventoryCategory::where('workspace_id', $currentWorkspace->id)
            ->where('id', $id)
            ->first();

        if (!$category) {
            return response()->json(['error' => 'Category not found'], 404);
        }

        // Check if category is in use
        $itemCount = $category->items()->count();
        if($itemCount > 0) {
            return response()->json([
                'error' => __('Cannot delete category that is assigned to items.')
            ], 422);
        }

        $category->delete();

        return response()->json([
            'success' => true,
            'message' => __('Category deleted successfully.')
        ]);
    }

    /**
     * Get all categories for a workspace
     */
    public function getCategories($slug)
    {
        $currentWorkspace = Utility::getWorkspaceBySlug($slug);
        if (!$currentWorkspace) {
            return response()->json(['error' => 'Workspace not found'], 404);
        }

        $categories = InventoryCategory::where('workspace_id', $currentWorkspace->id)
            ->orderBy('name')
            ->get(['id', 'name']);

        return response()->json($categories);
    }
}
