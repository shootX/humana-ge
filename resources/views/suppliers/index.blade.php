@extends('layouts.admin')

@php
    // Define a PHP variable to check permission for the action column
    $canManageSuppliers = Auth::guard('web')->check();
@endphp

@section('page-title')
    {{ __('Suppliers') }}
@endsection

@section('links')
    @if (\Auth::guard('client')->check())
        <li class="breadcrumb-item"><a href="{{ route('client.home') }}">{{ __('Home') }}</a></li>
    @else
        <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
    @endif
    <li class="breadcrumb-item"> {{ __('Suppliers') }}</li>
@endsection

@section('action-button')
    <a href="#" class="btn btn-sm btn-primary filter" data-toggle="tooltip" title="{{ __('Filter') }}">
        <i class="ti ti-filter"></i>
    </a>
     <a href="#" class="btn btn-sm btn-primary" data-ajax-popup="true" data-size="lg"
        data-title="{{ __('Add Supplier') }}" data-toggle="tooltip" title="{{ __('Add Supplier') }}" data-url="{{ route('suppliers.create', $currentWorkspace->slug) }}">
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
        
        .address-cell {
            max-width: 200px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
    <link rel="stylesheet" href="{{ asset('assets/custom/css/datatables.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/custom/libs/bootstrap-daterangepicker/daterangepicker.css') }}">
@endpush

@section('content')
    <div class="row row-gap-2 mb-4">

        <div class="row align-items-center display-none" id="show_filter">
            <div class="col-sm-6 col-xl-3 m-0">
                <div class='input-group'>
                    <input type='text' class="form-control pc-daterangepicker-2" id="duration1" name="duration"
                        placeholder="Select date range" />
                    <input type="hidden" name="start_date1" id="start_date1">
                    <input type="hidden" name="due_date1" id="end_date1">
                    <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3 m-0">
                <select class="form-select" name="order_by" id="order_by">
                    <option value="name,asc " class="px-4">{{ __('Name Asc') }}</option>
                    <option value="name,desc" class="px-4">{{ __('Name Desc') }}</option>
                </select>
            </div>
            
            <button class=" btn btn-primary btn-sm btn-filter me-1 mb-0" data-toggle="tooltip"
                title="{{ __('Apply') }}"><i class="ti ti-search"></i></button>
            <a href="{{ route('suppliers.index', $currentWorkspace->slug) }}" class="btn btn-sm btn-danger"
                data-toggle="tooltip" title="{{ __('Reset') }}">
                <i class="ti ti-refresh"></i>
            </a>
        </div>

        <div class="card">
            <div class="card-body mt-3 mx-2">
                <div class="row">
                    <div class="col-md-12 mt-2">
                        <div class="table-responsive">
                            <table class="table table-centered table-hover mb-0 animated selection-datatable px-4 mt-2"
                                id="suppliers-table">
                                <thead>
                                    <th>{{ __('Name') }}</th>
                                    <th>{{ __('Legal Name') }}</th>
                                    <th>{{ __('Tax Number') }}</th>
                                    <th>{{ __('Phone') }}</th>
                                    <th>{{ __('Email') }}</th>
                                    <th>{{ __('Address') }}</th>
                                    @if ($canManageSuppliers)
                                        <th>{{ __('Action') }}</th>
                                    @endif
                                </thead>
                                <tbody>
                                    <td colspan="{{ $canManageSuppliers ? 7 : 6 }}" class="text-center"> {{ __("Loading...") }}</td>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script src="{{ asset('assets/custom/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('assets/custom/libs/bootstrap-daterangepicker/daterangepicker.js') }}"></script>

    <script type="text/javascript">
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
                autoUpdateInput: false,
                timePicker: false,
                locale: {
                    format: 'MMM D, YY',
                    applyLabel: "{{ __('Apply') }}",
                    cancelLabel: "{{ __('Cancel') }}",
                    fromLabel: "{{ __('From') }}",
                    toLabel: "{{ __('To') }}",
                    daysOfWeek: [
                        "{{ __('Sun') }}",
                        "{{ __('Mon') }}",
                        "{{ __('Tue') }}",
                        "{{ __('Wed') }}",
                        "{{ __('Thu') }}",
                        "{{ __('Fri') }}",
                        "{{ __('Sat') }}"
                    ],
                    monthNames: [
                        "{{ __('January') }}",
                        "{{ __('February') }}",
                        "{{ __('March') }}",
                        "{{ __('April') }}",
                        "{{ __('May') }}",
                        "{{ __('June') }}",
                        "{{ __('July') }}",
                        "{{ __('August') }}",
                        "{{ __('September') }}",
                        "{{ __('October') }}",
                        "{{ __('November') }}",
                        "{{ __('December') }}"
                    ],
                }
            }, cb);

            $('#duration1').on('apply.daterangepicker', function(ev, picker) {
                cb(picker.startDate, picker.endDate);
            });

            $('#duration1').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('');
                $('input[name="start_date1"]').val('');
                $('input[name="due_date1"]').val('');
            });
        });

        $(document).ready(function() {
            // Columns definition
            let columns = [
                { data: 'name', name: 'name' },
                { data: 'legal_name', name: 'legal_name' },
                { data: 'tax_number', name: 'tax_number' },
                { data: 'phone', name: 'phone', searchable: false },
                { data: 'email', name: 'email', searchable: false },
                { data: 'address', name: 'address', searchable: false },
            ];

            // Conditionally add the action column based on auth
            var canManageSuppliers = {{ $canManageSuppliers ? 'true' : 'false' }};
            if (canManageSuppliers) {
                columns.push({ data: 'actions', name: 'actions', orderable: false, searchable: false });
            }

            // DataTable initialization
            var table = $("#suppliers-table").DataTable({
                order: [],
                select: {
                    style: "multi"
                },
                "language": dataTableLang,
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{ route('suppliers.get.data', $currentWorkspace->slug) }}",
                    type: 'POST',
                    data: function(d) {
                        const dateRange = $('#duration1').val().split(' - ');
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
                         $("#suppliers-table tbody").html('<td colspan="7" class="text-center text-danger"> {{ __("Error loading data.") }}</td>');
                     }
                },
                columns: columns, // Use the updated columns array
                drawCallback: function() {
                    $(".dataTables_paginate > .pagination").addClass("pagination-rounded");
                    loadConfirm();
                    
                    // Initialize tooltips and modals for the newly rendered actions
                    $('[data-toggle="tooltip"]').tooltip();
                    $('[data-ajax-popup="true"]').click(function(e) {
                        e.preventDefault();
                        var title = $(this).data('title');
                        var size = ($(this).data('size') == '') ? 'md' : $(this).data('size');
                        var url = $(this).data('url');
                        
                        $("#commonModal .modal-title").html(title);
                        $("#commonModal .modal-dialog").addClass('modal-' + size);
                        $.ajax({
                            url: url,
                            success: function(data) {
                                $('#commonModal .modal-body').html(data);
                                $("#commonModal").modal('show');
                                if ($(".select2").length > 0) {
                                    $(".select2").select2();
                                }
                            },
                            error: function(data) {
                                data = data.responseJSON;
                                show_toastr('Error', data.error, 'error')
                            }
                        });
                    });
                }
            });

            $(document).on("click", ".btn-filter", function() {
                table.ajax.reload();
            });

            // Delete Confirmation Logic
            $(document).on('click', '.delete-supplier', function(e) {
                e.preventDefault();
                var supplierId = $(this).data('supplier-id');
                
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
                        // Create form for deletion
                        var form = $('<form></form>').attr({
                            method: 'POST',
                            action: '{{ route("suppliers.destroy", [$currentWorkspace->slug, ""]) }}/' + supplierId
                        }).append('@csrf').append('@method("DELETE")');
                        
                        // Append to body and submit
                        $('body').append(form);
                        form.submit();
                    }
                });
            });

            // Update initial empty message colspan dynamically
            $("#suppliers-table tbody").html('<td colspan="7" class="text-center"> {{ __("Select filters and click Apply to load data.") }}</td>');
        });
    </script>
@endpush 