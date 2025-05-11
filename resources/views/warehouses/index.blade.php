@extends('layouts.admin')

@php
    // Define a PHP variable to check permission for the action column
    $canManageWarehouses = Auth::guard('web')->check();
@endphp

@section('page-title')
    {{ __('Warehouses') }}
@endsection

@section('links')
    @if (\Auth::guard('client')->check())
        <li class="breadcrumb-item"><a href="{{ route('client.home') }}">{{ __('Home') }}</a></li>
    @else
        <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
    @endif
    <li class="breadcrumb-item"> {{ __('Warehouses') }}</li>
@endsection

@section('action-button')
    <a href="#" class="btn btn-sm btn-primary" data-ajax-popup="true" data-size="lg"
       data-title="{{ __('Create New Warehouse') }}" data-toggle="tooltip" title="{{ __('Add Warehouse') }}" 
       data-url="{{ route('warehouses.create', $currentWorkspace->slug) }}">
        <i class="ti ti-plus"></i>
    </a>
@endsection

@push('css-page')
    <style>
        .page-content .select2-container {
            z-index: 0 !important;
        }
        .address-cell {
            max-width: 200px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
    <link rel="stylesheet" href="{{ asset('assets/custom/css/datatables.min.css') }}">
@endpush

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body mt-3 mx-2">
                    <div class="row">
                        <div class="col-md-12 mt-2">
                            <div class="table-responsive">
                                <table class="table table-centered table-hover mb-0 animated selection-datatable px-4 mt-2"
                                    id="warehouses-table">
                                    <thead>
                                        <th>{{ __('Name') }}</th>
                                        <th>{{ __('Code') }}</th>
                                        <th>{{ __('Address') }}</th>
                                        <th>{{ __('Status') }}</th>
                                        <th>{{ __('Items Count') }}</th>
                                        <th>{{ __('Created At') }}</th>
                                        {{-- Action column header is conditional --}}
                                        @if ($canManageWarehouses)
                                            <th>{{ __('Action') }}</th>
                                        @endif
                                    </thead>
                                    <tbody>
                                        {{-- Initial loading/empty message colspan needs to be dynamic --}}
                                        <tr>
                                            <td colspan="{{ $canManageWarehouses ? 7 : 6 }}" class="text-center">{{ __("Loading...") }}</td>
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
        const canManageWarehouses = @json($canManageWarehouses);

        $(document).ready(function() {
            // Columns definition
            let columns = [
                { data: 'name', name: 'name' },
                { data: 'code', name: 'code' },
                { data: 'address', name: 'address' },
                { data: 'status', name: 'status' },
                { data: 'items_count', name: 'items_count', searchable: false, orderable: false },
                { data: 'created_at', name: 'created_at' },
            ];

            // Conditionally add the action column based on PHP variable passed to JS
            if (canManageWarehouses) {
                columns.push({ data: 'action', name: 'action', orderable: false, searchable: false });
            }

            // DataTable initialization
            var table = $("#warehouses-table").DataTable({
                order: [[0, 'asc']],
                select: {
                    style: "multi"
                },
                "language": dataTableLang,
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{ route('warehouses.get.data', $currentWorkspace->slug) }}",
                    type: 'POST',
                    data: function(d) {
                        d._token = '{{ csrf_token() }}';
                    },
                    error: function (xhr, error, thrown) {
                        console.error("AJAX Error: ", error, thrown);
                        // Update colspan dynamically based on whether action column exists
                        const colspan = canManageWarehouses ? 7 : 6;
                        $("#warehouses-table tbody").html('<tr><td colspan="' + colspan + '" class="text-center text-danger"> {{ __("Error loading data.") }}</td></tr>');
                    }
                },
                columns: columns,
                drawCallback: function() {
                    $(".dataTables_paginate > .pagination").addClass("pagination-rounded");
                    loadConfirm();
                }
            });

            // Delete Confirmation Logic
            $(document).on('click', '.delete-warehouse', function(e) {
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
                    text: "{{ __('This action can not be undone. Do you want to continue?') }}",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '{{ __("Yes, delete it!") }}',
                    cancelButtonText: '{{ __("Cancel") }}'
                }).then((result) => {
                    if (result.isConfirmed) {
                        form.submit();
                    }
                });
            });

            // Update initial empty message colspan dynamically
            const initialColspan = canManageWarehouses ? 7 : 6;
            $("#warehouses-table tbody").html('<tr><td colspan="' + initialColspan + '" class="text-center"> {{ __("Loading data...") }}</td></tr>');
        });
    </script>
@endpush 