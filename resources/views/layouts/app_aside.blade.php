<aside class="app-aside">
    <div class="aside-content">
        <header class="aside-header d-block d-md-none">
            <!-- .btn-account -->
            <button class="btn-account" type="button" data-toggle="collapse" data-target="#dropdown-aside">
                <span class="user-avatar user-avatar-lg">
                    <img src="{{ asset("themes/looper/assets/images/avatars/profile.jpg")}}" alt="">
                </span>
                <span class="account-icon">
                    <span class="fa fa-caret-down fa-lg"></span>
                </span>

                <span class="account-summary">
                    <span class="account-name">Beni Arisandi</span>
                    <span class="account-description">Marketing Manager</span>
                </span>
            </button>

            <!-- .dropdown-aside -->
            <div id="dropdown-aside" class="dropdown-aside collapse">
                <!-- dropdown-items -->
                <div class="pb-3">
                    <a class="dropdown-item" href="#">
                        <span class="dropdown-icon oi oi-person"></span> Profile
                    </a>
                    <a class="dropdown-item" href="#">
                        <span class="dropdown-icon oi oi-person"></span> Change password
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
                        <span class="dropdown-icon oi oi-account-logout"></span> Logout
                    </a>
                </div>
                <!-- /dropdown-items -->
            </div>
            <!-- /.dropdown-aside -->
        </header>

        <!-- .aside-menu -->
        <section class="aside-menu has-scrollable">
            <!-- .stacked-menu -->
            <nav id="stacked-menu" class="stacked-menu">

                <nav class="menu">
                    <a href="{{ route("home") }}" class="menu-link">
                        <span class="menu-text">Dashboard</span>
                    </a>

                    <hr>

                    <div class="menu-header">Employees</div>
                    <a href="{{ route("employees.index")}}" class="menu-link mb-2">
                        <i class="fas fa-user-friends text-muted mr-2"></i>
                        <span class="menu-text">Browse a list</span>
                    </a>

                  
                    @can("create", \App\Employee::class)
                    <a href="{{ route("employee.create")}}" class="menu-link mb-2">
                        <i class="fas fa-plus text-muted mr-2"></i>
                        <span class="menu-text">Register new</span>
                    </a>
                    @endcan
                    <hr>
                    <div class="menu-header">Payroll</div>
                    <a href="{{url('viewpayrollperiods')}}" class="menu-link mb-2">
                        <i class="fa fa-paypal" aria-hidden="true"></i>
                        <span class="menu-text">Browse a list</span>
                    </a>

                    @can("create", \App\Farmer::class)
                    <a href="{{url('createpayrollperiod')}}" class="menu-link mb-2">
                        <i class="fas fa-plus text-muted mr-2"></i>
                        <span class="menu-text">Register new</span>
                    </a>
                     <a href="{{url('viewotherincomes')}}" class="menu-link mb-2">
                        <i class="fas fa-plus text-muted mr-2"></i>
                        <span class="menu-text">Incomes</span>
                    </a>
                     <a href="{{url('viewotherdeductions')}}" class="menu-link mb-2">
                        <i class="fas fa-plus text-muted mr-2"></i>
                        <span class="menu-text">Deductions</span>
                    </a>
                     <a href="{{url('viewloans')}}" class="menu-link mb-2">
                        <i class="fas fa-plus text-muted mr-2"></i>
                        <span class="menu-text">Loans</span>
                    </a>
                    
                    @endcan



                    <hr>

                    <div class="menu-header">Reports</div>
                    <a href="{{url('payslipform')}}" class="menu-link mb-2">
                        <i class="fas fa-chart-line text-muted mr-2"></i>
                        <span class="menu-text">Payslip</span>
                    </a>
                    <a href="{{ route("payrolls.reports", ["period" => "daily"]) }}" class="menu-link mb-2">
                        <i class="far fa-chart-bar text-muted mr-2"></i>
                        <span class="menu-text">Payrolls Reports</span>
                    </a>
                </nav>
            </nav>
        </section>
    </div>
</aside>