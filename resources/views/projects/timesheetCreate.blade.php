@if ($currentWorkspace)
    <form class="" method="post" action="{{ route('timesheet.store', [$currentWorkspace->slug]) }}">
        @csrf
        <div class="modal-body">
            <div class="form-group">
                <label for="task_id" class="col-form-label">{{ __('Branch') }}</label>
                <select class="form-control form-control-light" name="project_id" id="project_id" required>
                    <option value="">{{ __('Select Branch') }}</option>
                    @foreach ($projects as $project)
                        <option value="{{ $project->id }}">{{ $project->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="task_id" class="col-form-label">{{ __('Task') }}</label>
                <select class="form-control form-control-light" name="task_id" id="task_id" required>
                    <option value="">{{ __('Select Task') }}</option>
                </select>
            </div>

            <div class="form-group">
                <label for="date" class="col-form-label">{{ __('Date') }}</label>
                <input type="date" class="form-control form-control-light date" id="date"
                    placeholder="{{ __('Date') }}" name="date" required>
            </div>
            <div class="form-group">
                <label for="time" class="col-form-label">{{ __('Time') }}</label>
                <input type="time" class="form-control form-control-light" id="time"
                    placeholder="{{ __('Time') }}" name="time" required>
            </div>
            <div class="form-group">
                <label for="description" class="col-form-label">{{ __('Description') }}</label>
                <textarea class="form-control form-control-light" id="description" rows="3" name="description"></textarea>
            </div>

        </div>
        <div class=" modal-footer">
            <button type="button" class="btn btn-light" data-dismiss="modal">{{ __('Cancel') }}</button>
            <button type="submit" class="btn btn-primary">{{ __('Create') }}</button>
        </div>

    </form>
@else
    <div class="container mt-5">
        <div class="card">
            <div class="card-body p-4">
                <div class="page-error">
                    <div class="page-inner">
                        <h1>404</h1>
                        <div class="page-description">
                            {{ __('Page Not Found') }}
                        </div>
                        <div class="page-search">
                            <p class="text-muted mt-3">
                                {{ __("It's looking like you may have taken a wrong turn. Don't worry... it happens to the best of us. Here's a little tip that might help you get back on track.") }}
                            </p>
                            <div class="mt-3">
                                <a class="btn-return-home badge-blue" href="{{ route('home') }}"><i
                                        class="fas fa-reply"></i> {{ __('Return Home') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif
