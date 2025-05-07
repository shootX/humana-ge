@extends('layouts.admin')

@php
    // Define a PHP variable to check permission for the action column
    // Original check: $canManageInventory = Auth::user()->type == 'admin' || (isset($currentWorkspace) && $currentWorkspace->permission == 'Owner');
    // Updated check: Allow any logged-in 'web' user
    $canManageInventory = Auth::guard('web')->check();
@endphp

@section('page-title')
    {{ __('Inventory') }}
@endsection

@section('links')
    @if (\Auth::guard('client')->check())
        <li class="breadcrumb-item"><a href="{{ route('client.home') }}">{{ __('Home') }}</a></li>
    @else
        <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
    @endif
    <li class="breadcrumb-item"> {{ __('Inventory') }}</li>
@endsection

@section('action-button')
    <a href="#" class="btn btn-sm btn-primary filter" data-toggle="tooltip" title="{{ __('Filter') }}">
        <i class="ti ti-filter"></i>
    </a>
     <a href="#" class="btn btn-sm btn-primary" data-ajax-popup="true" data-size="lg"
        data-title="{{ __('Create New Item') }}" data-toggle="tooltip" title="{{ __('Add Item') }}" data-url="{{ route('inventory.create', $currentWorkspace->slug) }}">
        <i class="ti ti-plus"></i>
    </a>
@endsection

@push('css-page')
    <style>
        .page-content .select2-container {
            z-index: 0 !important;
        }

        .display-none {
            display: none !important;
        }
    </style>
    <link rel="stylesheet" href="{{ asset('assets/custom/css/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/custom/libs/bootstrap-daterangepicker/daterangepicker.css') }}">
@endpush

@section('content')
    <div class="row row-gap-2 mb-4">

        <div class="row align-items-center display-none" id="show_filter">
            <div class="col-sm-6 col-xl-2 m-0">
                <select class=" form-select" name="category" id="category">
                    <option value="">{{ __('All Categories') }}</option>
                </select>
            </div>
             <div class="col-sm-6 col-xl-2 m-0">
                 <select class=" form-select" name="status_filter" id="status_filter">
                    <option value="">{{ __('All Statuses') }}</option>
                     <option value="in_stock">{{ __('In Stock') }}</option>
                     <option value="out_of_stock">{{ __('Out of Stock') }}</option>
                 </select>
            </div>
            <div class="col-sm-6 col-xl-2 m-0">
                 <div class='input-group'>
                    <input type='text' class=" form-control pc-daterangepicker-2" id="duration1" name="duration"
                        placeholder="Select date range" />
                    <input type="hidden" name="start_date1" id="start_date1">
                    <input type="hidden" name="due_date1" id="end_date1">
                    <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                </div>
            </div>
             <div class="col-sm-6 col-xl-1 m-0">
                 <select class="form-select" name="order_by" id="order_by">
                    <option value="name,asc " class="px-4">{{ __('Name Asc') }}</option>
                    <option value="name,desc" class="px-4">{{ __('Name Desc') }}</option>
                     <option value="quantity,asc " class="px-4">{{ __('Quantity Asc') }}</option>
                    <option value="quantity,desc" class="px-4">{{ __('Quantity Desc') }}</option>
                </select>
            </div>
            <div class="col-sm-6 col-xl-1 m-0">
                <button class=" btn btn-primary btn-sm btn-filter me-1 mb-0" data-toggle="tooltip"
                    title="{{ __('Apply') }}"><i class="ti ti-search"></i></button>
                <a href="{{ route('inventory.index', $currentWorkspace->slug) }}" class="btn btn-sm btn-danger"
                    data-toggle="tooltip" title="{{ __('Reset') }}">
                    <i class="ti ti-refresh"></i>
                </a>
            </div>
        </div>

        <div class="card">
            <div class="card-body mt-3 mx-2">
                <div class="row">
                    <div class="col-md-12 mt-2">
                        <div class="table-responsive">
                            <table class="table table-centered table-hover mb-0 animated selection-datatable px-4 mt-2"
                                id="inventory-table">
                                <thead>
                                    <th>{{ __('Item Name') }}</th>
                                    <th>{{ __('Category') }}</th>
                                    <th>{{ __('Quantity') }}</th>
                                    <th>{{ __('Unit Price') }}</th>
                                    <th>{{ __('Status') }}</th>
                                    <th>{{ __('Last Updated') }}</th>
                                    {{-- Action column header is conditional --}}
                                    @if ($canManageInventory)
                                        <th>{{ __('Action') }}</th>
                                    @endif
                                </thead>
                                <tbody>
                                    {{-- Initial loading/empty message colspan needs to be dynamic --}}
                                    <td colspan="{{ $canManageInventory ? 7 : 6 }}" class="text-center"> {{ __("Loading...") }}</td>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

{{-- Define JS variable in a separate script block for clarity --}}
<script>
    const canManageInventory = @json($canManageInventory);
</script>

@push('scripts')
    <script src="{{ asset('assets/custom/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('assets/custom/libs/bootstrap-daterangepicker/daterangepicker.js') }}"></script>

    <script type="text/javascript">
        // const canManageInventory = @json($canManageInventory); // REMOVED

        $(".filter").click(function() {
            $("#show_filter").toggleClass('display-none');
        });

        $(function() {
            function cb(start, end) {
                $("#duration1").val(start.format('MMM D, YYYY') + ' - ' + end.format('MMM D, YYYY'));
                $('input[name="start_date1"]').val(start.format('YYYY-MM-DD'));
                $('input[name="due_date1"]').val(end.format('YYYY-MM-DD'));
            }

            $('#duration1').daterangepicker({
                autoApply: true,
                autoclose: true,
                autoUpdateInput: false,
                locale: {
                    format: 'MMM D, YYYY',
                    applyLabel: "{{ __('Apply') }}",
                    cancelLabel: "{{ __('Cancel') }}",
                    fromLabel: "{{ __('From') }}",
                    toLabel: "{{ __('To') }}",
                    daysOfWeek: [
                        "{{ __('Sun') }}", "{{ __('Mon') }}", "{{ __('Tue') }}", "{{ __('Wed') }}", "{{ __('Thu') }}", "{{ __('Fri') }}", "{{ __('Sat') }}"
                    ],
                    monthNames: [
                        "{{ __('January') }}", "{{ __('February') }}", "{{ __('March') }}", "{{ __('April') }}", "{{ __('May') }}", "{{ __('June') }}",
                        "{{ __('July') }}", "{{ __('August') }}", "{{ __('September') }}", "{{ __('October') }}", "{{ __('November') }}", "{{ __('December') }}"
                    ],
                }
            }, cb);
        });

        $(document).ready(function() {
            // Columns definition
            let columns = [
                { data: 'name', name: 'name' },
                { data: 'category', name: 'category' },
                { data: 'quantity', name: 'quantity' },
                { data: 'unit_price', name: 'unit_price', searchable: false }, // unit_price might not be searchable
                { data: 'status', name: 'status', orderable: false, searchable: false }, // status usually isn't orderable/searchable directly
                { data: 'updated_at', name: 'updated_at' }, // Added updated_at back
            ];

            // Conditionally add the action column based on PHP variable passed to JS
            if (canManageInventory) {
                columns.push({ data: 'action', name: 'action', orderable: false, searchable: false });
            }

            // DataTable initialization
            var table = $("#inventory-table").DataTable({
                order: [],
                select: {
                    style: "multi"
                },
                "language": dataTableLang,
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{ route('inventory.get.data', $currentWorkspace->slug) }}",
                    type: 'POST',
                    data: function(d) {
                        const dateRange = $('#duration1').val().split(' - ');
                        d.category = $("#category").val();
                        d.status_filter = $("#status_filter").val();
                        d.order_by = $("#order_by").val();
                        d.start_date = dateRange[0] ? moment(dateRange[0], 'MMM D, YYYY').format('YYYY-MM-DD') : '';
                        d.end_date = dateRange[1] ? moment(dateRange[1], 'MMM D, YYYY').format('YYYY-MM-DD') : '';
                        d._token = '{{ csrf_token() }}';
                    },
                    dataSrc: function(json) {
                       // Ensure the data array exists before returning
                       return json.data || [];
                    },
                     error: function (xhr, error, thrown) {
                         console.error("AJAX Error: ", error, thrown);
                         // Update colspan dynamically based on whether action column exists
                         const colspan = canManageInventory ? 7 : 6;
                         $("#inventory-table tbody").html('<td colspan="' + colspan + '" class="text-center text-danger"> {{ __("Error loading data.") }}</td>');
                     }
                },
                columns: columns, // Use the updated columns array
                drawCallback: function() {
                    $(".dataTables_paginate > .pagination").addClass("pagination-rounded");
                     loadConfirm();
                }
            });

            $(document).on("click", ".btn-filter", function() {
                table.ajax.reload();
            });

            // New Delete Confirmation Logic
            $(document).on('click', '.delete-inventory-item', function(e) {
                e.preventDefault(); // Prevent default anchor behavior
                var formId = $(this).data('form-id');
                var form = $('#' + formId);

                // Check if the form exists
                if (form.length === 0) {
                    console.error('Delete form not found:', formId);
                    // Optionally show a user-friendly error
                    Swal.fire({
                        title: '{{ __("Error") }}',
                        text: '{{ __("Could not find the delete form.") }}',
                        icon: 'error',
                        confirmButtonText: '{{ __("OK") }}'
                    });
                    return; // Stop execution
                }

                Swal.fire({
                    title: '{{ __("Are you sure?") }}',
                    text: "{{ __('This action can not be undone. Do you want to continue?') }}",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '{{ __("Yes, delete it!") }}',
                    cancelButtonText: '{{ __("Cancel") }}'
                }).then((result) => {
                    if (result.isConfirmed) {
                        // Submit the form if confirmed
                        form.submit();
                    }
                });
            });

             // Update initial empty message colspan dynamically
             const initialColspan = canManageInventory ? 7 : 6;
             $("#inventory-table tbody").html('<td colspan="' + initialColspan + '" class="text-center"> {{ __("Select filters and click Apply to load data.") }}</td>');
        });
    </script>
@endpush 