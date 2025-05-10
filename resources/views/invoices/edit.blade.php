<form method="post" action="{{ route('invoices.update', [$currentWorkspace->slug, $invoice->id]) }}"
    class="needs-validation" novalidate>
    @csrf
    @method('PUT')
    <div class="modal-body">
        <!-- ინვოისის ძირითადი ინფორმაცია -->
        <div class="row mb-3">
            <div class="col-12">
                <h5 class="text-muted mb-2">{{ __('Basic Information') }}</h5>
                <hr class="mt-0">
            </div>
            
            <div class="form-group col-md-6">
                <label for="client_id" class="col-form-label">{{ __('Client') }}</label>
                <select class="form-control" name="client_id" id="client_id">
                    <option value="">{{ __('Select Client') }}</option>
                    @foreach ($clients as $p)
                        <option value="{{ $p->id }}" @if ($invoice->client_id == $p->id) selected @endif>
                            {{ $p->name }}
                        </option>
                    @endforeach
                </select>
            </div>
            
            <div class="form-group col-md-6">
                <label for="status" class="col-form-label">{{ __('Status') }}</label><x-required></x-required>
                <select class="form-control" name="status" id="status" required>
                    <option value="sent" @if ($invoice->status == 'sent') selected @endif>{{ __('Sent') }}</option>
                    <option value="paid" @if ($invoice->status == 'paid') selected @endif>{{ __('Paid') }}</option>
                    <option value="partialy paid" @if ($invoice->status == 'partialy paid') selected @endif>{{ __('Partialy Paid') }}</option>
                    <option value="canceled" @if ($invoice->status == 'canceled') selected @endif>{{ __('Canceled') }}</option>
                </select>
            </div>
        </div>
        
        <!-- თარიღები -->
        <div class="row mb-3">
            <div class="col-12">
                <h5 class="text-muted mb-2">{{ __('Date Information') }}</h5>
                <hr class="mt-0">
            </div>
            
            <div class="form-group col-md-6">
                <label for="issue_date" class="col-form-label">{{ __('Issue Date') }}</label><x-required></x-required>
                <div class="input-group date">
                    <input class="form-control datepicker" type="text" id="issue_date" name="issue_date"
                        value="{{ $invoice->issue_date }}" autocomplete="off" required="required">
                    <span class="input-group-text">
                        <i class="feather icon-calendar"></i>
                    </span>
                </div>
                <small class="form-text text-muted">{{ __('Date when invoice is created') }}</small>
            </div>
            
            <div class="form-group col-md-6">
                <label for="due_date" class="col-form-label">{{ __('Due Date') }}</label><x-required></x-required>
                <div class="input-group date">
                    <input class="form-control datepicker2" type="text" id="due_date" name="due_date"
                        value="{{ $invoice->due_date }}" autocomplete="off" required="required">
                    <span class="input-group-text">
                        <i class="feather icon-calendar"></i>
                    </span>
                </div>
                <small class="form-text text-muted">{{ __('Date when payment is due') }}</small>
            </div>
        </div>
        
        <!-- ფინანსური ინფორმაცია -->
        <div class="row">
            <div class="col-12">
                <h5 class="text-muted mb-2">{{ __('Financial Information') }}</h5>
                <hr class="mt-0">
            </div>
            
            <div class="form-group col-md-4">
                <label for="discount" class="col-form-label">{{ __('Discount') }}</label>
                <div class="form-icon-user">
                    <span class="currency-icon bg-primary">{{ !empty($currentWorkspace->currency) ? $currentWorkspace->currency : '$' }}</span>
                    <input class="form-control currency_input" type="number" min="0" id="discount"
                        name="discount" value="{{ $invoice->discount }}" placeholder="{{ __('Enter Discount') }}">
                </div>
                <small class="form-text text-muted">{{ __('Amount to be subtracted from total') }}</small>
            </div>
            
            <div class="form-group col-md-4">
                <label for="tax_id" class="col-form-label">{{ __('Tax') }}</label>
                <select class="form-control tax-select" name="tax_id" id="tax_id">
                    <option value="">{{ __('Select Tax') }}</option>
                    @foreach($taxes as $p)
                        <option value="{{$p->id}}" @if($invoice->tax_id == $p->id) selected @endif>{{$p->name}}</option>
                    @endforeach
                </select>
                <small class="form-text text-muted">{{ __('Select applicable tax for this invoice') }}</small>
            </div>
            
            <div class="form-group col-md-4">
                <label for="tax_type" class="col-form-label">{{ __('Tax Type') }}</label>
                <select class="form-control tax-select" name="tax_type" id="tax_type">
                    <option value="exclusive" @if($invoice->tax_type == 'exclusive' || !$invoice->tax_type) selected @endif>{{ __('Exclusive (Add to Total)') }}</option>
                    <option value="inclusive" @if($invoice->tax_type == 'inclusive') selected @endif>{{ __('Inclusive (Already in Total)') }}</option>
                </select>
                <small class="form-text text-muted">{{ __('How tax is calculated in the total amount') }}</small>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <input type="button" value="{{ __('Cancel') }}" class="btn btn-secondary" data-bs-dismiss="modal">
        <input type="submit" value="{{ __('Update') }}" class="btn btn-primary">
    </div>
</form>

<script>
    (function() {
        const d_week = new Datepicker(document.querySelector('.datepicker2'), {
            buttonClass: 'btn',
            todayBtn: true,
            clearBtn: true,
            format: 'yyyy-mm-dd',
        });
    })();
</script>

<script>
    (function() {
        const d_week = new Datepicker(document.querySelector('.datepicker'), {
            buttonClass: 'btn',
            todayBtn: true,
            clearBtn: true,
            format: 'yyyy-mm-dd',
        });
    })();
</script>

<script>
    $(document).ready(function() {
        // გავაუქმოთ არსებული select2 ინსტანსები
        $('.tax-select').select2('destroy');
        
        // თავიდან ინიციალიზაცია
        $('.tax-select').select2({
            width: '100%',
            dropdownParent: $('.modal-body')
        });

        // თუ ჩამოშლა სხვა ელემენტს დაფარავს, კორექტულად უჩვენოს
        $('.tax-select').on('select2:open', function() {
            // დავაყენოთ z-index მაღალი
            $('.select2-dropdown').css('z-index', 9999);
        });
    });
</script>
