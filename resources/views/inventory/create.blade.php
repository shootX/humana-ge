@php
    // Determine if we are in edit mode by checking if $item is set and has an id
    $isEditMode = isset($item) && $item->id;
    // Define form action and method based on mode
    $formAction = $isEditMode ? route('inventory.update', [$currentWorkspace->slug, $item->id]) : route('inventory.store', $currentWorkspace->slug);
    $formMethod = $isEditMode ? 'PUT' : 'POST';
    
    // Unit options
    $unitOptions = [
        'piece' => __('Piece'),
        'kilogram' => __('Kilogram'),
        'liter' => __('Liter'),
        'meter' => __('Meter'),
        'square_meter' => __('Square Meter'),
    ];
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
                {{ Form::label('unit', __('Unit'), ['class' => 'col-form-label']) }}
                {{ Form::select('unit', $unitOptions, null, ['class' => 'form-control', 'required' => 'required']) }}
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
        <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('category_id', __('Category'), ['class' => 'col-form-label']) }}
                <div class="input-group">
                    <select name="category_id" id="category_id" class="form-control">
                        <option value="">{{ __('Select Category') }}</option>
                        @foreach($categories as $category)
                            <option value="{{ $category->id }}" {{ isset($item) && $item->category_id == $category->id ? 'selected' : '' }}>
                                {{ $category->name }}
                            </option>
                        @endforeach
                    </select>
                    <button type="button" class="btn btn-primary" id="add-category-btn">
                        <i class="ti ti-plus"></i>
                    </button>
                </div>
                <small class="form-text text-muted">{{ __('Select a category or add a new one') }}</small>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                {{ Form::label('barcode', __('Barcode'), ['class' => 'col-form-label']) }}
                {{ Form::text('barcode', null, ['class' => 'form-control', 'placeholder' => __('Enter barcode (optional)')]) }}
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

<!-- Add Category Modal -->
<div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="add-category-modal-label" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="add-category-modal-label">{{ __('Add New Category') }}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="new-category-name" class="col-form-label">{{ __('Category Name') }}</label>
                    <input type="text" class="form-control" id="new-category-name" placeholder="{{ __('Enter category name') }}" required>
                </div>
                <div class="form-group">
                    <label for="new-category-description" class="col-form-label">{{ __('Description') }}</label>
                    <textarea class="form-control" id="new-category-description" rows="3" placeholder="{{ __('Enter description (optional)') }}"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{ __('Cancel') }}</button>
                <button type="button" class="btn btn-primary" id="save-category-btn">{{ __('Save Category') }}</button>
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Open add category modal
        document.getElementById('add-category-btn').addEventListener('click', function(e) {
            e.preventDefault();
            var modal = new bootstrap.Modal(document.getElementById('add-category-modal'));
            modal.show();
        });
        
        // Save new category
        document.getElementById('save-category-btn').addEventListener('click', function() {
            var name = document.getElementById('new-category-name').value;
            var description = document.getElementById('new-category-description').value;
            
            if (!name) {
                alert('{{ __("Category name is required") }}');
                return;
            }
            
            // AJAX call to save category
            fetch('{{ route("inventory.categories.store", $currentWorkspace->slug) }}', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                body: JSON.stringify({
                    name: name,
                    description: description
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // Add new option to select
                    var select = document.getElementById('category_id');
                    var option = document.createElement('option');
                    option.value = data.category.id;
                    option.text = data.category.name;
                    option.selected = true;
                    select.appendChild(option);
                    
                    // Close modal
                    var modal = bootstrap.Modal.getInstance(document.getElementById('add-category-modal'));
                    modal.hide();
                    
                    // Reset form
                    document.getElementById('new-category-name').value = '';
                    document.getElementById('new-category-description').value = '';
                } else {
                    alert(data.error || '{{ __("Failed to create category") }}');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('{{ __("An error occurred while creating the category") }}');
            });
        });
    });
</script>

{{-- New Category Modal --}}
<div class="modal fade" id="new_category_modal" tabindex="-1" role="dialog" aria-labelledby="new_category_modal_label" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="new_category_modal_label">{{ __('Add New Category') }}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="new_category_name">{{ __('Category Name') }}</label>
                    <input type="text" class="form-control" id="new_category_name" placeholder="{{ __('Enter category name') }}">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{ __('Cancel') }}</button>
                <button type="button" class="btn btn-primary" id="add_category_btn">{{ __('Add Category') }}</button>
            </div>
        </div>
    </div>
</div>

@push('scripts')
    <script src="{{ asset('js/inventory.js') }}"></script>
@endpush 