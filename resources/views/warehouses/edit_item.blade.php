{{ Form::open(['route' => ['warehouses.items.update', $currentWorkspace->slug, $warehouse->id, $warehouseItem->id], 'method' => 'PUT', 'class' => 'px-3']) }}
<div class="row">
    <div class="col-md-12 form-group">
        <div class="mb-3">
            <h6 class="text-muted">{{ __('Item') }}</h6>
            <p class="mb-0 fw-bold">{{ $warehouseItem->inventoryItem->name }}</p>
            <p class="mb-0">{{ __('Category') }}: {{ $warehouseItem->inventoryItem->category ? $warehouseItem->inventoryItem->category->name : __('No Category') }}</p>
        </div>
    </div>
    <div class="col-md-6 form-group">
        {{ Form::label('quantity', __('Quantity'), ['class' => 'form-label']) }}
        {{ Form::number('quantity', $warehouseItem->quantity, ['class' => 'form-control', 'required' => 'required', 'min' => '0', 'placeholder' => __('Enter Quantity')]) }}
    </div>
    <div class="col-md-12 form-group">
        {{ Form::label('note', __('Note'), ['class' => 'form-label']) }}
        {{ Form::textarea('note', $warehouseItem->note, ['class' => 'form-control', 'rows' => 3, 'placeholder' => __('Enter Note')]) }}
    </div>
</div>

<div class="text-end">
    {{ Form::submit(__('Update'), ['class' => 'btn btn-primary']) }}
</div>
{{ Form::close() }} 