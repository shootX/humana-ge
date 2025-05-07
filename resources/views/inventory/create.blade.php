@php
    // Determine if we are in edit mode by checking if $item is set and has an id
    $isEditMode = isset($item) && $item->id;
    // Define form action and method based on mode
    $formAction = $isEditMode ? route('inventory.update', [$currentWorkspace->slug, $item->id]) : route('inventory.store', $currentWorkspace->slug);
    $formMethod = $isEditMode ? 'PUT' : 'POST';
@endphp

{{-- Use Form::model for automatic field population in edit mode --}}
{{ Form::model($isEditMode ? $item : null, ['route' => [$isEditMode ? 'inventory.update' : 'inventory.store', $currentWorkspace->slug, $isEditMode ? $item->id : null], 'method' => $formMethod, 'id' => 'inventory-form']) }}

{{-- Add method spoofing for PUT/PATCH --}}
@if($isEditMode)
    @method('PUT')
@endif

<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                {{ Form::label('name', __('Item Name'), ['class' => 'col-form-label']) }}
                {{ Form::text('name', null, ['class' => 'form-control', 'required' => 'required', 'placeholder' => __('Enter item name')]) }}
            </div>
        </div>
         <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('quantity', __('Quantity'), ['class' => 'col-form-label']) }}
                {{ Form::number('quantity', null, ['class' => 'form-control', 'required' => 'required', 'min' => '0', 'placeholder' => __('Enter quantity')]) }}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('unit_price', __('Unit Price'), ['class' => 'col-form-label']) }}
                 <div class="input-group">
                     <span class="input-group-text">$</span>
                     {{ Form::number('unit_price', null, ['class' => 'form-control', 'min' => '0', 'step' => '0.01', 'placeholder' => __('Enter unit price')]) }}
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                {{ Form::label('category', __('Category'), ['class' => 'col-form-label']) }}
                {{ Form::text('category', null, ['class' => 'form-control', 'placeholder' => __('Enter category (optional)')]) }}
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                {{ Form::label('description', __('Description'), ['class' => 'col-form-label']) }}
                {{ Form::textarea('description', null, ['class' => 'form-control', 'rows' => '3', 'placeholder' => __('Enter description (optional)')]) }}
            </div>
        </div>

         {{-- Optionally add Status field if it needs to be manually editable --}}
         {{-- <div class="col-md-12">
            <div class="form-group">
                {{ Form::label('status', __('Status'), ['class' => 'col-form-label']) }}
                {{ Form::select('status', ['in_stock' => __('In Stock'), 'out_of_stock' => __('Out of Stock')], $isEditMode ? $item->status : 'in_stock', ['class' => 'form-control']) }}
            </div>
        </div> --}}

    </div>
</div>

<div class="modal-footer">
     {{ Form::button(__('Cancel'), ['type' => 'button', 'class' => 'btn btn-secondary', 'data-bs-dismiss' => 'modal']) }}
     {{ Form::submit($isEditMode ? __('Update Item') : __('Create Item'), ['class' => 'btn btn-primary']) }}
</div>

{{ Form::close() }} 