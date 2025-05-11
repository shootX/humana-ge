@extends('layouts.admin')

@php
    // Define a PHP variable to check permission for the action column
    $canManageItems = Auth::guard('web')->check();
@endphp

@section('page-title')
    {{ __('Warehouse Items') }} - {{ $warehouse->name }}
@endsection

@section('links')
    @if (\Auth::guard('client')->check())
        <li class="breadcrumb-item"><a href="{{ route('client.home') }}">{{ __('Home') }}</a></li>
    @else
        <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
    @endif
    <li class="breadcrumb-item"><a href="{{ route('warehouses.index', $currentWorkspace->slug) }}">{{ __('Warehouses') }}</a></li>
    <li class="breadcrumb-item"> {{ __('Items') }}</li>
@endsection

@section('action-button')
    <a href="#" class="btn btn-sm btn-primary" data-ajax-popup="true" data-size="lg"
       data-title="{{ __('Add Item to Warehouse') }}" data-toggle="tooltip" title="{{ __('Add Item') }}" 
       data-url="{{ route('warehouses.items.create', [$currentWorkspace->slug, $warehouse->id]) }}">
        <i class="ti ti-plus"></i>
    </a>
@endsection

@push('css-page')
    <style>
        .page-content .select2-container {
            z-index: 0 !important;
        }
    </style>
    <link rel="stylesheet" href="{{ asset('assets/custom/css/datatables.min.css') }}">
@endpush

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5>{{ __('Warehouse Information') }}</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <h6 class="text-muted">{{ __('Name') }}</h6>
                                <p class="mb-0">{{ $warehouse->name }}</p>
                            </div>
                            <div class="mb-3">
                                <h6 class="text-muted">{{ __('Code') }}</h6>
                                <p class="mb-0">{{ $warehouse->code ?: __('N/A') }}</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <h6 class="text-muted">{{ __('Status') }}</h6>
                                <p class="mb-0">
                                    @if ($warehouse->status == 'active')
                                        <span class="badge bg-success">{{ __('Active') }}</span>
                                    @else
                                        <span class="badge bg-danger">{{ __('Inactive') }}</span>
                                    @endif
                                </p>
                            </div>
                            <div class="mb-3">
                                <h6 class="text-muted">{{ __('Address') }}</h6>
                                <p class="mb-0">{{ $warehouse->address ?: __('N/A') }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-12 mt-3">
            <div class="card">
                <div class="card-header">
                    <h5>{{ __('Items in Warehouse') }}</h5>
                </div>
                <div class="card-body mt-3 mx-2">
                    <div class="row">
                        <div class="col-md-12 mt-2">
                            <div class="table-responsive">
                                <table class="table table-centered table-hover mb-0 animated selection-datatable px-4 mt-2"
                                    id="warehouse-items-table">
                                    <thead>
                                        <th>{{ __('Item Name') }}</th>
                                        <th>{{ __('Category') }}</th>
                                        <th>{{ __('Quantity') }}</th>
                                        <th>{{ __('Note') }}</th>
                                        <th>{{ __('Created At') }}</th>
                                        {{-- Action column header is conditional --}}
                                        @if ($canManageItems)
                                            <th>{{ __('Action') }}</th>
                                        @endif
                                    </thead>
                                    <tbody>
                                        {{-- Initial loading/empty message colspan needs to be dynamic --}}
                                        <tr>
                                            <td colspan="{{ $canManageItems ? 6 : 5 }}" class="text-center">{{ __("Loading...") }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script src="{{ asset('assets/custom/js/jquery.dataTables.min.js') }}"></script>

    <script type="text/javascript">
        const canManageItems = @json($canManageItems);

        $(document).ready(function() {
            // Columns definition
            let columns = [
                { data: 'item_name', name: 'item_name' },
                { data: 'category', name: 'category' },
                { data: 'quantity', name: 'quantity' },
                { data: 'note', name: 'note' },
                { data: 'created_at', name: 'created_at' },
            ];

            // Conditionally add the action column
            if (canManageItems) {
                columns.push({ data: 'action', name: 'action', orderable: false, searchable: false });
            }

            // DataTable initialization
            var table = $("#warehouse-items-table").DataTable({
                order: [[0, 'asc']],
                select: {
                    style: "multi"
                },
                "language": dataTableLang,
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{ route('warehouses.items.get.data', [$currentWorkspace->slug, $warehouse->id]) }}",
                    type: 'POST',
                    data: function(d) {
                        d._token = '{{ csrf_token() }}';
                    },
                    error: function (xhr, error, thrown) {
                        console.error("AJAX Error: ", error, thrown);
                        // Update colspan dynamically based on whether action column exists
                        const colspan = canManageItems ? 6 : 5;
                        $("#warehouse-items-table tbody").html('<tr><td colspan="' + colspan + '" class="text-center text-danger"> {{ __("Error loading data.") }}</td></tr>');
                    }
                },
                columns: columns,
                drawCallback: function() {
                    $(".dataTables_paginate > .pagination").addClass("pagination-rounded");
                    loadConfirm();
                }
            });

            // Delete Confirmation Logic
            $(document).on('click', '.delete-warehouse-item', function(e) {
                e.preventDefault();
                var formId = $(this).data('form-id');
                var form = $('#' + formId);

                // Check if the form exists
                if (form.length === 0) {
                    console.error('Delete form not found:', formId);
                    Swal.fire({
                        title: '{{ __("Error") }}',
                        text: '{{ __("Could not find the delete form.") }}',
                        icon: 'error',
                        confirmButtonText: '{{ __("OK") }}'
                    });
                    return;
                }

                Swal.fire({
                    title: '{{ __("Are you sure?") }}',
                    text: "{{ __('This will remove the item from this warehouse. This action can not be undone. Do you want to continue?') }}",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '{{ __("Yes, remove it!") }}',
                    cancelButtonText: '{{ __("Cancel") }}'
                }).then((result) => {
                    if (result.isConfirmed) {
                        form.submit();
                    }
                });
            });

            // Update initial empty message colspan dynamically
            const initialColspan = canManageItems ? 6 : 5;
            $("#warehouse-items-table tbody").html('<tr><td colspan="' + initialColspan + '" class="text-center"> {{ __("Loading data...") }}</td></tr>');
        });
    </script>
@endpush 