@php
    $logo = \App\Models\Utility::get_file('logo/');
    if (Auth::user()->type == 'admin') {
        $setting = App\Models\Utility::getAdminPaymentSettings();
        if ($setting['color']) {
            $color = $setting['color'];
        } else {
            $color = 'theme-3';
        }
        $dark_mode = $setting['cust_darklayout'];
        $cust_theme_bg = $setting['cust_theme_bg'];
        $SITE_RTL = $setting['site_rtl'];
        $company_logo = App\Models\Utility::get_logo();
    } else {
        $setting = App\Models\Utility::getcompanySettings($currentWorkspace->id);
        $color = $setting->theme_color;
        $dark_mode = $setting->cust_darklayout;
        $SITE_RTL = $setting->site_rtl;
        $cust_theme_bg = $setting->cust_theme_bg;
        $adminSetting = App\Models\Utility::getAdminPaymentSettings();
        $company_logo = App\Models\Utility::getcompanylogo($currentWorkspace->id);
        if ($company_logo == '' || $company_logo == null) {
            $company_logo = App\Models\Utility::get_logo();
        }
    }

    if ($color == '' || $color == null) {
        $settings = App\Models\Utility::getAdminPaymentSettings();
        $color = $settings['color'];
    }

    if ($dark_mode == '' || $dark_mode == null) {
        $company_logo = App\Models\Utility::get_logo();
        $dark_mode = $settings['cust_darklayout'];
    }

    if ($cust_theme_bg == '' || $dark_mode == null) {
        $cust_theme_bg = $settings['cust_theme_bg'];
    }

    if ($SITE_RTL == '' || $SITE_RTL == null) {
        $SITE_RTL = env('SITE_RTL');
    }
@endphp
<nav class="dash-sidebar light-sidebar {{ isset($cust_theme_bg) && $cust_theme_bg == 'on' ? 'transprent-bg' : '' }}">
    <div class="navbar-wrapper">
        <div class="m-header main-logo">
            <a href="{{ route('home') }}" class="b-brand">
                <!-- ========   change your logo hear   ============ -->
                <img src="{{ $logo . $company_logo . '?v=' . time() }}" alt="logo" class="sidebar_logo_size" />
            </a>
        </div>
        <div class="navbar-content">
            <ul class="dash-navbar">
                @if (\Auth::guard('client')->check())
                    <li class="dash-item dash-hasmenu">
                        <a href="{{ route('client.home') }}"
                            class="dash-link {{ Request::route()->getName() == 'home' || Request::route()->getName() == null || Request::route()->getName() == 'client.home' ? ' active' : '' }}">
                            <span class="dash-micon"><i class="ti ti-home"></i></span>
                            <span class="dash-mtext">{{ __('Dashboard') }}</span>
                        </a>
                    </li>
                @else
                    <li class="dash-item dash-hasmenu">
                        <a href="{{ route('home') }}"
                            class="dash-link  {{ Request::route()->getName() == 'home' || Request::route()->getName() == null || Request::route()->getName() == 'client.home' ? ' active' : '' }}">
                            @if (Auth::user()->type == 'admin')
                                <span class="dash-micon"><i class="ti ti-user"></i></span>
                                <span class="dash-mtext">{{ __('Company') }}</span>
                            @else
                                <span class="dash-micon"><i class="ti ti-home"></i></span>
                                <span class="dash-mtext">{{ __('Dashboard') }}</span>
                            @endif
                        </a>
                    </li>
                @endif

                @if (isset($currentWorkspace) && $currentWorkspace)
                    @auth('web')
                        <li
                            class="dash-item {{ Request::route()->getName() == 'users.index' || Request::route()->getName() == 'users_logs.index' ? ' active' : '' }}">
                            <a href="{{ route('users.index', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"> <i data-feather="user"></i></span>
                                <span class="dash-mtext">{{ __('Users') }}</span>
                            </a>
                        </li>

                        @if ($currentWorkspace->creater->id == Auth::user()->id)
                            <li class="dash-item dash-hasmenu">
                                <a href="{{ route('clients.index', $currentWorkspace->slug) }}"
                                    class="dash-link {{ Request::route()->getName() == 'clients.index' ? ' active' : '' }}">
                                    <span class="dash-micon"><i class="ti ti-brand-python"></i></span>
                                    <span class="dash-mtext"> {{ __('Clients') }}</span>
                                </a>
                            </li>
                        @endif

                        <li
                            class="dash-item {{ Request::route()->getName() == 'projects.index' || Request::segment(2) == 'projects' ? ' active' : '' }}">
                            <a href="{{ route('projects.index', $currentWorkspace->slug) }}" class="dash-link">
                                <span class="dash-micon"><i class="ti ti-share"></i></span>
                                <span class="dash-mtext">{{ __('Branches') }}</span>
                            </a>
                        </li>

                        <li class="dash-item {{ Request::route()->getName() == 'tasks.index' ? ' active' : '' }}">
                            <a href="{{ route('tasks.index', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"><i data-feather="list"></i></span>
                                <span class="dash-mtext">{{ __('Tasks') }}</span>
                            </a>
                        </li>

                        {{-- დროებით გათიშულია Timesheet ფუნქციონალი
                        <li class="dash-item {{ Request::route()->getName() == 'timesheet.index' ? ' active' : '' }}">
                            <a href="{{ route('timesheet.index', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"><i data-feather="clock"></i></span>
                                <span class="dash-mtext">{{ __('Timesheet') }}</span>
                            </a>
                        </li>
                        --}}

                        @if (Auth::user()->type == 'user' && $currentWorkspace->creater->id == Auth::user()->id)
                            {{-- დროებით გათიშულია Tracker ფუნქციონალი
                            <li class="dash-item {{ \Request::route()->getName() == 'time.tracker' ? 'active' : '' }}">
                                <a href="{{ route('time.tracker', $currentWorkspace->slug) }}" class="dash-link ">
                                    <span class="dash-micon"><i data-feather="watch"></i></span>
                                    <span class="dash-mtext">{{ __('Tracker') }}</span>
                                </a>
                            </li>
                            --}}
                        @endif

                        @if ($currentWorkspace->creater->id == Auth::user()->id)
                            <li
                                class="dash-item {{ Request::route()->getName() == 'invoices.index' || Request::segment(2) == 'invoices' ? ' active' : '' }}">
                                <a href="{{ route('invoices.index', $currentWorkspace->slug) }}" class="dash-link">
                                    <span class="dash-micon"><i data-feather="printer"></i></span>
                                    <span class="dash-mtext">{{ __('Invoices') }} </span>
                                </a>
                            </li>
                        @endif

                       

                        <li class="dash-item {{ Request::route()->getName() == 'calender.index' ? ' active' : '' }}">
                            <a href="{{ route('calender.google.calendar', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"><i data-feather="calendar"></i></span>
                                <span class="dash-mtext">{{ __('Calendar') }}</span>
                            </a>
                        </li>

                        <li class="dash-item {{ Request::route()->getName() == 'notes.index' ? ' active' : '' }}">
                            <a href="{{ route('notes.index', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"><i data-feather="clipboard"></i></span>
                                <span class="dash-mtext">{{ __('Notes') }} </span>
                            </a>
                        </li>

                        @if ($adminSetting['enable_chat'] == 'on')
                            <li class="dash-item {{ Request::route()->getName() == 'chats' ? ' active' : '' }}">
                                <a href="{{ route('chats') }}" class="dash-link">
                                    <span class="dash-micon"><i class="ti ti-message-circle"></i></span>
                                    <span class="dash-mtext">{{ __('Messenger') }}</span>
                                </a>
                            </li>
                        @endif

                        {{-- Add Inventory Menu Item --}}
                        <li class="dash-item dash-hasmenu {{ Request::route()->getName() == 'inventory.index' || Request::route()->getName() == 'suppliers.index' ? ' active' : '' }}">
                            <a href="#!" class="dash-link">
                                <span class="dash-micon"><i data-feather="archive"></i></span>
                                <span class="dash-mtext">{{ __('Inventory') }}</span>
                                <span class="dash-arrow"><i data-feather="chevron-right"></i></span>
                            </a>
                            <ul class="dash-submenu">
                                <li class="{{ Request::route()->getName() == 'inventory.index' ? ' active' : '' }}">
                                    <a class="dash-link" href="{{ route('inventory.index', $currentWorkspace->slug) }}">{{ __('Inventory Items') }}</a>
                                </li>
                                <li class="{{ Request::route()->getName() == 'suppliers.index' ? ' active' : '' }}">
                                    <a class="dash-link" href="{{ route('suppliers.index', $currentWorkspace->slug) }}">{{ __('Suppliers') }}</a>
                                </li>
                            </ul>
                        </li>
                        {{-- End Inventory Menu Item --}}

                        @elseauth

                        <li
                            class="dash-item {{ Request::route()->getName() == 'client.projects.index' || Request::segment(3) == 'projects' ? ' active' : '' }}">
                            <a href="{{ route('client.projects.index', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"><i class="ti ti-share"></i></span>
                                <span class="dash-mtext">{{ __('Branches') }}</span>
                            </a>
                        </li>

                        {{-- დროებით გათიშულია Timesheet ფუნქციონალი
                        <li
                            class="dash-item {{ Request::route()->getName() == 'client.timesheet.index' ? ' active' : '' }}">
                            <a href="{{ route('client.timesheet.index', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"><i data-feather="clock"></i></span>
                                <span class="dash-mtext">{{ __('Timesheet') }}</span>
                            </a>
                        </li>
                        --}}

                        <li
                            class="dash-item {{ Request::route()->getName() == 'client.invoices.index' ? ' active' : '' }}">
                            <a href="{{ route('client.invoices.index', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"><i data-feather="printer"></i></span>
                                <span class="dash-mtext">{{ __('Invoices') }}</span>
                            </a>
                        </li>

                        {{-- contracts და contract type მენიუს პუნქტი სრულად ამოღებულია ყველა როლისთვის --}}

                        <li
                            class="dash-item {{ Request::route()->getName() == 'client.project_report.index' || Request::segment(3) == 'project_report' ? ' active' : '' }}">
                            <a href="{{ route('client.project_report.index', $currentWorkspace->slug) }}"
                                class="dash-link ">
                                <span class="dash-micon"><i class="ti ti-chart-line"></i></span>
                                <span class="dash-mtext">{{ __('Branch Report') }}</span>
                            </a>
                        </li>

                        <li
                            class="dash-item {{ Request::route()->getName() == 'client.calender.index' ? ' active' : '' }}">
                            <a href="{{ route('client.calender.index', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"><i data-feather="calendar"></i></span>
                                <span class="dash-mtext">{{ __('Calendar') }}</span>
                            </a>
                        </li>

                        @if ($currentWorkspace->creater->id == Auth::user()->id)
                            <li
                                class="dash-item {{ Request::route()->getName() == 'workspace.settings' ? ' active' : '' }}">
                                <a href="{{ route('workspace.settings', $currentWorkspace->slug) }}"
                                    class="dash-link {{ Request::route()->getName() == 'workspace.settings' ? ' active' : '' }}">
                                    <span class="dash-micon"><i data-feather="settings"></i></span>
                                    <span class="dash-mtext">{{ __('Settings') }}</span>
                                </a>
                            </li>
                        @endif
                    @endauth
                @endif

                @if (isset($currentWorkspace) && $currentWorkspace)
                    @auth('web')
                        <li
                            class="dash-item {{ Request::route()->getName() == 'project_report.index' || Request::segment(2) == 'project_report' ? ' active' : '' }}">
                            <a href="{{ route('project_report.index', $currentWorkspace->slug) }}" class="dash-link ">
                                <span class="dash-micon"><i class="ti ti-chart-line"></i></span>
                                <span class="dash-mtext">{{ __('Branch Report') }}</span>
                            </a>
                        </li>
                    @endauth
                @endif

                @if (Auth::user()->type == 'admin')
                    <li
                        class="dash-item {{ Request::route()->getName() == 'email_template.index' || Request::route()->getName() == 'email_template.show' || Request::segment(1) == 'email_template_lang' ? ' active' : '' }}">
                        <a class="dash-link" href="{{ route('email_template.index') }}">
                            <span class="dash-micon"><i class="ti ti-mail"></i></span>
                            <span class="dash-mtext">{{ __('Email Templates') }}</span>
                        </a>
                    </li>

                    @include('landingpage::menu.landingpage')

                    <li class="dash-item {{ Request::route()->getName() == 'settings.index' ? ' active' : '' }}">
                        <a href="{{ route('settings.index') }}" class="dash-link "><span class="dash-micon">
                                <i data-feather="settings"></i></span>
                            <span class="dash-mtext">{{ __('Settings') }}</span>
                        </a>
                    </li>
                @endif

                @if (isset($currentWorkspace) &&
                        $currentWorkspace &&
                        $currentWorkspace->creater->id == Auth::user()->id &&
                        Auth::user()->getGuard() != 'client')
                    <li
                        class="dash-item {{ Request::route()->getName() == 'notification-templates.index' || Request::route()->getName() == 'notification-templates.show' ? ' active' : '' }}">
                        <a href="{{ route('notification-templates.index', $currentWorkspace->slug) }}"
                            class="dash-link ">
                            <span class="dash-micon"><i class="ti ti-notification"></i></span>
                            <span class="dash-mtext">{{ __('Notification Template') }}</span>
                        </a>
                    </li>

                    <li class="dash-item {{ Request::route()->getName() == 'workspace.settings' ? ' active' : '' }}">
                        <a href="{{ route('workspace.settings', $currentWorkspace->slug) }}" class="dash-link ">
                            <span class="dash-micon"><i data-feather="settings"></i></span>
                            <span class="dash-mtext">{{ __('Settings') }}</span>
                        </a>
                    </li>
                @endif

                @if (Auth::user()->type == 'admin')
                @endif
            </ul>

            @if (isset($currentWorkspace) && $currentWorkspace)
                <div class="navbar-footer border-top ">
                    <div class="d-flex align-items-center py-3 px-3 border-bottom">
                        <div class="me-2">
                            <img src="{{ $currentWorkspace->logo ? asset(Storage::url($currentWorkspace->logo)) : asset(Storage::url('logo/logo.png')) }}"
                                alt="{{ config('app.name', 'WorkDo') }}" class="img-fluid" style="width: 40px;">
                        </div>
                        <div>
                            <b>{{ isset($currentWorkspace->name) ? $currentWorkspace->name : config('app.name', 'WorkDo') }}</b>
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </div>
</nav>
