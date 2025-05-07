@extends('layouts.admin')

@section('page-title')
    {{ __('Inventory') }}
@endsection

@section('links')
    <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
    <li class="breadcrumb-item"> {{ __('Inventory') }}</li>
@endsection

@push('css-page')
    <style type="text/css">
        .on_hover:hover {
            color: #fff;
        }
        .status_badge {
            min-width: 95px;
        }
    </style>
@endpush

@section('action-button')
    <a href="#" class="btn btn-sm btn-primary" data-ajax-popup="true" data-size="lg"
        data-title="{{ __('Create Inventory') }}" data-toggle="tooltip" data-bs-toggle="tooltip"
        title="{{ __('Create') }}" data-url="#">
        <i class="ti ti-plus"></i>
    </a>
@endsection

@section('content')
    <div class="row row-gap-2 mb-4">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-centered table-hover mb-0 animated" id="selection-datatable">
                            <thead>
                                <th>{{ __('Name') }}</th>
                                <th>{{ __('Category') }}</th>
                                <th>{{ __('Quantity') }}</th>
                                <th>{{ __('Unit') }}</th>
                                <th>{{ __('Price') }}</th>
                                <th>{{ __('Description') }}</th>
                                <th>{{ __('Action') }}</th>
                            </thead>
                            <tbody>
                                {{-- აქ იქნება ინვენტარის ციკლი --}}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection 