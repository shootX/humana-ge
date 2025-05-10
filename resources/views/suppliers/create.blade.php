@php
    // Determine if we are in edit mode by checking if $supplier is set and has an id
    $isEditMode = isset($supplier) && $supplier->id;
    // Define form action and method based on mode
    $formAction = $isEditMode ? route('suppliers.update', [$currentWorkspace->slug, $supplier->id]) : route('suppliers.store', $currentWorkspace->slug);
    $formMethod = $isEditMode ? 'PUT' : 'POST';
@endphp

{{-- Use Form::model for automatic field population in edit mode --}}
{{ Form::model($isEditMode ? $supplier : null, ['route' => [$isEditMode ? 'suppliers.update' : 'suppliers.store', $currentWorkspace->slug, $isEditMode ? $supplier->id : null], 'method' => $formMethod, 'id' => 'supplier-form']) }}

{{-- Add method spoofing for PUT/PATCH --}}
@if($isEditMode)
    @method('PUT')
@endif

<div class="modal-body">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('name', __('Name'), ['class' => 'form-label']) }}
                {{ Form::text('name', null, ['class' => 'form-control', 'required' => 'required', 'placeholder' => __('Enter supplier name')]) }}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('legal_name', __('Legal Name'), ['class' => 'form-label']) }}
                {{ Form::text('legal_name', null, ['class' => 'form-control', 'required' => 'required', 'placeholder' => __('Enter legal name')]) }}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('tax_number', __('Tax Number'), ['class' => 'form-label']) }}
                {{ Form::text('tax_number', null, ['class' => 'form-control', 'required' => 'required', 'placeholder' => __('Enter tax number')]) }}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('phone', __('Phone'), ['class' => 'form-label']) }}
                {{ Form::text('phone', null, ['class' => 'form-control', 'placeholder' => __('Enter phone number')]) }}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('email', __('Email'), ['class' => 'form-label']) }}
                {{ Form::email('email', null, ['class' => 'form-control', 'placeholder' => __('Enter email address')]) }}
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                {{ Form::label('address', __('Address'), ['class' => 'form-label']) }}
                {{ Form::textarea('address', null, ['class' => 'form-control', 'rows' => 3, 'placeholder' => __('Enter address')]) }}
            </div>
        </div>
    </div>
</div>

<div class="modal-footer">
    <input type="button" value="{{__('Cancel')}}" class="btn btn-light" data-bs-dismiss="modal">
    <input type="submit" value="{{ $isEditMode ? __('Update') : __('Create') }}" class="btn btn-primary">
</div>

{{ Form::close() }} 