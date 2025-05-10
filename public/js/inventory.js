// Load inventory categories for dropdown
function loadInventoryCategories() {
    var currentWorkspace = $('meta[name="workspace-slug"]').attr('content');
    $.ajax({
        url: "/" + currentWorkspace + "/inventory-categories/get",
        type: 'GET',
        dataType: 'json',
        success: function(categories) {
            var categorySelect = $('#category_id');
            categorySelect.empty();
            categorySelect.append('<option value="">Select Category</option>');
            
            $.each(categories, function(index, category) {
                categorySelect.append('<option value="' + category.id + '">' + category.name + '</option>');
            });
            
            // If editing, set the selected category
            var selectedCategory = categorySelect.data('selected');
            if (selectedCategory) {
                categorySelect.val(selectedCategory);
            }
        },
        error: function(error) {
            console.error('Error loading categories:', error);
        }
    });
}

// Add new category
function addNewCategory() {
    var categoryName = $('#new_category_name').val();
    var currentWorkspace = $('meta[name="workspace-slug"]').attr('content');
    
    if (!categoryName) {
        toastr.error('Please enter a category name');
        return;
    }
    
    $.ajax({
        url: "/" + currentWorkspace + "/inventory-categories/store",
        type: 'POST',
        data: {
            name: categoryName,
            _token: $('meta[name="csrf-token"]').attr('content')
        },
        dataType: 'json',
        success: function(response) {
            toastr.success('Category added successfully');
            $('#new_category_modal').modal('hide');
            $('#new_category_name').val('');
            
            // Reload categories and select the new one
            loadInventoryCategories();
            setTimeout(function() {
                $('#category_id').val(response.id);
            }, 500);
        },
        error: function(error) {
            toastr.error('Error adding category');
            console.error('Error:', error);
        }
    });
}

// Initialize on document ready
$(document).ready(function() {
    // Load categories on page load
    if ($('#category_id').length) {
        loadInventoryCategories();
    }
    
    // Category modal buttons
    $('#new_category_btn').on('click', function() {
        $('#new_category_modal').modal('show');
    });
    
    $('#add_category_btn').on('click', function() {
        addNewCategory();
    });
    
    // Initialize any barcode scanners if needed
    if ($('#barcode').length) {
        // Add barcode scanner initialization here if required
    }
}); 