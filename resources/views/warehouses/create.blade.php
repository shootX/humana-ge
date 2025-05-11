{{ Form::open(['route' => isset($warehouse) ? ['warehouses.update', $currentWorkspace->slug, $warehouse->id] : ['warehouses.store', $currentWorkspace->slug], 'method' => isset($warehouse) ? 'PUT' : 'POST', 'class' => 'px-3']) }}
<div class="row">
    <div class="col-md-6 form-group">
        {{ Form::label('name', __('Name'), ['class' => 'form-label']) }}
        {{ Form::text('name', isset($warehouse) ? $warehouse->name : '', ['class' => 'form-control', 'required' => 'required', 'placeholder' => __('Enter Warehouse Name')]) }}
    </div>
    <div class="col-md-6 form-group">
        {{ Form::label('code', __('Code'), ['class' => 'form-label']) }}
        {{ Form::text('code', isset($warehouse) ? $warehouse->code : '', ['class' => 'form-control', 'placeholder' => __('Enter Warehouse Code')]) }}
        <small class="form-text text-muted">{{ __('A unique code for warehouse identification (optional)') }}</small>
    </div>
    <div class="col-md-12 form-group">
        {{ Form::label('address', __('Address'), ['class' => 'form-label']) }}
        {{ Form::textarea('address', isset($warehouse) ? $warehouse->address : '', ['class' => 'form-control', 'rows' => 3, 'placeholder' => __('Enter Warehouse Address')]) }}
    </div>
    <div class="col-md-12 form-group">
        {{ Form::label('description', __('Description'), ['class' => 'form-label']) }}
        {{ Form::textarea('description', isset($warehouse) ? $warehouse->description : '', ['class' => 'form-control', 'rows' => 3, 'placeholder' => __('Enter Warehouse Description')]) }}
    </div>
    <div class="col-md-6 form-group">
        {{ Form::label('status', __('Status'), ['class' => 'form-label']) }}
        {{ Form::select('status', ['active' => __('Active'), 'inactive' => __('Inactive')], isset($warehouse) ? $warehouse->status : 'active', ['class' => 'form-control']) }}
    </div>
</div>

<div class="text-end">
    {{ Form::submit(__('Save'), ['class' => 'btn btn-primary']) }}
</div>
{{ Form::close() }} 