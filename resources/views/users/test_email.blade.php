<form class="needs-validation" novalidate method="post" action="{{ route('test.email.send') }}" id="test_email">
    @csrf
    <div class="modal-body">
        <div class="card-box">
            <input type="hidden" name="mail_driver" value="{{ $data['mail_driver'] }}" />
            <input type="hidden" name="mail_host" value="{{ $data['mail_host'] }}" />
            <input type="hidden" name="mail_port" value="{{ $data['mail_port'] }}" />
            <input type="hidden" name="mail_username" value="{{ $data['mail_username'] }}" />
            <input type="hidden" name="mail_password" value="{{ $data['mail_password'] }}" />
            <input type="hidden" name="mail_encryption" value="{{ $data['mail_encryption'] }}" />
            <input type="hidden" name="mail_from_address" value="{{ $data['mail_from_address'] }}" />
            <input type="hidden" name="mail_from_name" value="{{ $data['mail_from_name'] }}" />
        </div>
        <div class="row">
            <div class="col-md-12">
                <label for="email" class="form-label">{{ __('E-Mail Address') }}</label><x-required></x-required>
                <input type="text" class="form-control" id="email" name="email" required />
            </div>
        </div>
    </div>
    <div class=" modal-footer">
        <label id="email_sending" style="display: none"><i class="fas fa-clock"></i></label>
        <input type="button" value="{{ __('Cancel') }}" class="btn  btn-secondary" data-bs-dismiss="modal">
        <input type="submit" value="{{ __('Send Mail') }}" class="btn btn-primary">
    </div>
</form>
