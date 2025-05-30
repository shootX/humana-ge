@php
    $setting = \App\Models\Utility::getAdminPaymentSettings();
    $logo = \App\Models\Utility::get_file('logo/');
@endphp

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" dir="{{ $$setting['site_rtl'] == 'on' ? 'rtl' : '' }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>
        @yield('page-title') -
        {{ isset($currentWorkspace->company) && $currentWorkspace->company != '' ? $currentWorkspace->company : config('app.name', 'Taskly') }}
    </title>

    <link rel="shortcut icon" href="{{ asset('storage/logo/favicon.png') }}">

    <!-- General CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('assets/css/iziToast.min.css') }}">

    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/components.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/icons.min.css') }}">
    <link href="{{ asset('assets/css/easy-autocomplete.min.css') }}" rel="stylesheet">
    @stack('style')
    @if ($setting['site_rtl'] == 'on')
        <link rel="stylesheet" href="{{ asset('assets/css/bootstrap-rtl.css') }}">
    @endif
</head>

<body>
    <div>
        <div id="app">
            <div class="main-wrapper">
                <div class="navbar-bg"></div>
                <nav class="text-center mt-3">
                    <img src="{{ asset($logo . 'logo-full.png') }}" alt="{{ $setting['app_name'] }}" height="35">
                </nav>
                <!-- Main Content -->
                <div class="main-content" style="padding-left: 30px;padding-top: 20px;">
                    @yield('content')
                </div>
                <footer class="main-footer">
                    @include('partials.footer')
                </footer>
            </div>
        </div>
    </div>

    <div id="commanModel" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modelCommanModelLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content ">
                <div class="modal-header">
                    <h4 class="modal-title" id="modelCommanModelLabel"></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body"></div>
            </div>
        </div>
    </div>
    <script src="{{ asset('assets/custom/libs/jquery/dist/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/custom/js/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('assets/custom/libs/nicescroll/jquery.nicescroll.min.js') }} "></script>
    <script src="{{ asset('assets/custom/libs/moment/min/moment.min.js') }}"></script>
    <script src="{{ asset('assets/custom/libs/bootstrap/dist/js/bootstrap.min.js') }}"></script>


    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> --}}
    {{-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> --}}
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script> --}}
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script> --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    {{-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/js/select2.min.js"></script>

    <script src="{{ asset('assets/js/iziToast.min.js') }}"></script>
    <script src="{{ asset('assets/js/stisla.js') }}"></script>
    <script src="{{ asset('assets/js/scripts.js') }}"></script>
    <script src="{{ asset('assets/js/scrollreveal.min.js') }}"></script>
    <script src="{{ asset('assets/custom/js/custom.js') }}"></script>
    @stack('scripts')

    @if ($message = Session::get('success'))
        <script>
            show_toastr('{{ __('Success') }}', '{!! $message !!}', 'success')
        </script>
    @endif

    @if ($message = Session::get('error'))
        <script>
            show_toastr('{{ __('Error') }}', '{!! $message !!}', 'error')
        </script>
    @endif
</body>

</html>
