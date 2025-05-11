{{ Form::open(['route' => ['warehouses.items.store', $currentWorkspace->slug, $warehouse->id], 'method' => 'POST', 'class' => 'px-3']) }}
<div class="row">
    <div class="col-md-12 form-group">
        {{ Form::label('inventory_item_id', __('Item'), ['class' => 'form-label']) }}
        <select name="inventory_item_id" id="inventory_item_id" class="form-control" required>
            <option value="">{{ __('Select Item') }}</option>
            @foreach ($inventoryItems as $item)
                @if (!in_array($item->id, $existingItemIds))
                    <option value="{{ $item->id }}">{{ $item->name }} ({{ $item->category ? $item->category->name : __('No Category') }})</option>
                @endif
            @endforeach
        </select>
    </div>
    <div class="col-md-6 form-group">
        {{ Form::label('quantity', __('Quantity'), ['class' => 'form-label']) }}
        {{ Form::number('quantity', '', ['class' => 'form-control', 'required' => 'required', 'min' => '0', 'placeholder' => __('Enter Quantity')]) }}
    </div>
    <div class="col-md-12 form-group">
        {{ Form::label('note', __('Note'), ['class' => 'form-label']) }}
        {{ Form::textarea('note', '', ['class' => 'form-control', 'rows' => 3, 'placeholder' => __('Enter Note')]) }}
    </div>
</div>

<div class="text-end">
    {{ Form::submit(__('Add to Warehouse'), ['class' => 'btn btn-primary']) }}
</div>
{{ Form::close() }} 