@extends('layouts.admin')

@section('page-title', __('View Transfer Details'))

@section('action-button')
    <a href="{{ route('warehouses.transfers', $currentWorkspace->slug) }}" class="btn btn-sm btn-primary">
        <i class="ti ti-arrow-left"></i> {{ __('Back to Transfers') }}
    </a>
@endsection

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h5>{{ __('Transfer Information') }}</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>{{ __('Transfer ID') }}</th>
                                            <td>{{ $transfer->id }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('Reference Number') }}</th>
                                            <td>{{ $transfer->reference_number ?? '-' }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('Source Warehouse') }}</th>
                                            <td>{{ $transfer->sourceWarehouse ? $transfer->sourceWarehouse->name : '-' }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('Destination Warehouse') }}</th>
                                            <td>{{ $transfer->destinationWarehouse ? $transfer->destinationWarehouse->name : '-' }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>{{ __('Created By') }}</th>
                                            <td>{{ $transfer->creator ? $transfer->creator->name : '-' }}</td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('Created At') }}</th>
                                            <td>
                                                @if($transfer->created_at)
                                                    {{ $transfer->created_at->format('Y-m-d H:i') }}
                                                @else
                                                    -
                                                @endif
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>{{ __('Note') }}</th>
                                            <td>{{ $transfer->note ?? '-' }}</td>
                                        </tr>
                                        <tr>
                                            <th></th>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-12 mt-4">
            <div class="card">
                <div class="card-header">
                    <h5>{{ __('Transferred Items') }}</h5>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>{{ __('Item Name') }}</th>
                                    <th>{{ __('Category') }}</th>
                                    <th>{{ __('Quantity') }}</th>
                                    <th>{{ __('Unit') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($transfer->items as $item)
                                    <tr>
                                        <td>{{ isset($item->inventoryItem) ? $item->inventoryItem->name : '-' }}</td>
                                        <td>
                                            @if(isset($item->inventoryItem) && isset($item->inventoryItem->category) && $item->inventoryItem->category)
                                                {{ $item->inventoryItem->category->name }}
                                            @else
                                                -
                                            @endif
                                        </td>
                                        <td>{{ $item->quantity }}</td>
                                        <td>{{ isset($item->inventoryItem) ? $item->inventoryItem->unit : '-' }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection 