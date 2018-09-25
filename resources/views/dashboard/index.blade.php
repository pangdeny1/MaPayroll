@extends('layouts.master')

@section('content')
    <div class="wrapper">
        <!-- .page -->
        <div class="page"><div class="sidebar-backdrop"></div>
            <!-- .page-inner -->
            <div class="page-inner">
                <!-- .page-title-bar -->
                <header class="page-title-bar">
                    <p class="lead">
                        <span class="font-weight-bold">Hello, {{ auth()->user()->full_name }}</span>
                        <span class="d-block text-muted">Here’s what’s happening with your business today.</span>
                    </p>
                </header>

                <div class="page-section">
                    <div class="section-block">
                        <div class="metric-row">
                            <div class="col-lg-9">
                                <div class="metric-row metric-flush">
                                    <!-- metric column -->
                                    <div class="col">
                                        <!-- .metric -->
                                        <a href="user-teams.html" class="metric metric-bordered align-items-center">
                                            <h2 class="metric-label"> Active Employees </h2>
                                            <p class="metric-value h3">
                                                <sub>
                                                    <i class="oi oi-people"></i>
                                                </sub>
                                                <span class="value">
                                                    {{ sprintf("%05d", \App\Employee::where("active","yes")->count()) }}
                                                </span>
                                            </p>
                                        </a>
                                        <!-- /.metric -->
                                    </div>
                                    <!-- /metric column -->

                                    <div class="col">
                                        <!-- .metric -->
                                        <a href="user-projects.html" class="metric metric-bordered align-items-center">
                                            <h2 class="metric-label"> In Active Employees </h2>
                                            <p class="metric-value h3">
                                                <sub>
                                                    <i class="oi oi-fork"></i>
                                                </sub>
                                                <span class="value">
                                                    {{ sprintf("%05d", \App\Employee::where("active","no")->count()) }}
                                                </span>
                                            </p>
                                        </a>
                                    </div>

                                    <!-- metric column -->
                                    <div class="col">
                                        <!-- .metric -->
                                        <a href="user-tasks.html" class="metric metric-bordered align-items-center">
                                            <h2 class="metric-label"> Total Employees </h2>
                                            <p class="metric-value h3">
                                                <sub>
                                                    <i class="fa fa-tasks"></i>
                                                </sub>
                                                <span class="value">
                                                    {{ sprintf("%05d", \App\Employee::count()) }}
                                                </span>
                                            </p>
                                        </a>
                                        <!-- /.metric -->
                                    </div>
                                    <!-- /metric column -->
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="card-metric">
                                    <a class="metric">
                                        <div class="metric-badge">
                                        <span class="badge badge-lg badge-success">
                                            <span class="oi oi-media-record pulse mr-1"></span> PAYROLLS
                                        </span>
                                        </div>
                                        <p class="metric-value h3">
                                            <sub>
                                                <i class="oi oi-timer"></i>
                                            </sub>
                                            <span class="value">
                                               {{ sprintf("%05d", \App\Models\Payroll::count()) }}
                                            </span>
                                        </p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 col-lg-12 col-xl-6">
                            <section class="card card-fluid">
                                <div class="card-body">
                                    <div class="d-flex align-items-center mb-3">
                                        <h3 class="card-title mr-auto">
                                            Number of employees over time
                                        </h3>
                                    </div>

                                    <div class="chartjs" style="height: 300px">
                                        <div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                                            <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                                <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
                                            </div>
                                            <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                                        <canvas id="completion-tasks" width="268" height="283" class="chartjs-render-monitor" style="display: block; width: 268px; height: 283px;"></canvas>
                                    </div>
                                </div>
                            </section>
                        </div>

                        <div class="col-12 col-lg-6 col-xl-6">
                            <section class="card card-fluid">
                                <!-- .card-body -->
                                <div class="card-body pb-0">
                                    <div class="d-flex align-items-center mb-3">
                                        <h3 class="card-title mr-auto"> Employement Status </h3>

                                        <div class="card-title-control">
                                            <div class="form-group dropdown">
                                                <button class="btn btn-light" data-toggle="dropdown">
                                                    <span>Today</span>
                                                    <i class="fa fa-fw fa-caret-down"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- legend -->
                                    <ul class="list-inline small">
                                        <li class="list-inline-item">
                                            <i class="fa fa-fw fa-circle text-info"></i> Retired
                                        </li>
                                        <li class="list-inline-item">
                                            <i class="fa fa-fw fa-circle text-purple"></i> Suspended
                                        </li>
                                        <li class="list-inline-item">
                                            <i class="fa fa-fw fa-circle text-teal"></i> Terminated
                                        </li>
                                        <li class="list-inline-item">
                                            <i class="fa fa-fw fa-circle text-red"></i> Resigned
                                        </li>
                                    </ul>
                                </div>

                                <!-- .list-group -->
                                <div class="list-group list-group-flush">
                                    @foreach(\App\Employee::latest()->take(5)->get() as $employee)
                                    <div class="list-group-item">
                                        <div class="list-group-item-figure">
                                            <a href="user-profile.html"
                                               class="user-avatar"
                                               data-toggle="tooltip"
                                               title=""
                                               data-original-title="Martha Myers"
                                        >
                                                <img src="{{ Avatar::create($employee->first_name)->toBase64() }}" alt="">
                                            </a>
                                        </div>
                                        <div class="list-group-item-body">
                                            <!-- .progress -->
                                            <div class="progress bg-white rounded-0" data-toggle="tooltip" data-html="true" title="" data-original-title="">
                                                <div class="progress-bar bg-purple"
                                                     role="progressbar"
                                                     aria-valuenow="73"
                                                     aria-valuemin="0"
                                                     aria-valuemax="100"
                                                     style="width: 73%"
                                                >
                                                    <span class="sr-only">73% Complete</span>
                                                </div>
                                                <div class="progress-bar bg-teal"
                                                     role="progressbar"
                                                     aria-valuenow="8"
                                                     aria-valuemin="0"
                                                     aria-valuemax="100"
                                                     style="width: 18%"
                                                >
                                                    <span class="sr-only">8% Complete</span>
                                                </div>
                                                <div class="progress-bar bg-red"
                                                     role="progressbar"
                                                     aria-valuenow="3"
                                                     aria-valuemin="0"
                                                     aria-valuemax="100"
                                                     style="width: 3%">
                                                    <span class="sr-only">3% Complete</span>
                                                </div>
                                            </div>
                                            <!-- /.progress -->
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </section>
                        </div>
                    </div>

                    <div class="section-deck">
                        <div class="card card-fluid">
                            <header class="card-header"> Newly Employees </header>
                            @if(\App\Employee::count())
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="text-left"  nowrap=>Employee</th>
                                                <th class="text-left"  nowrap>Gender</th>
                                                <th class="text-left" nowrap>Department</th>
                                                <th class="text-left" nowrap>Country</th>
                                                <th class="text-left" nowrap>Region</th>
                                                <th class="text-left"  nowrap>Email</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach(\App\Employee::take(5)->get() as $employee)
                                            <tr>
                                                <td>
                                                    <a href="{{ route("employees.show", $employee) }}" class="user-avatar mr-1">
                                                        <img src="{{ Avatar::create($employee->full_name)->toBase64() }}" alt="User Avatar">
                                                    </a>
                                                    <a href="{{ route("employees.show", $employee) }}">
                                                        {{ $employee->full_name }}
                                                    </a>
                                                </td>
                                                <td>{{ $employee->gender }}</td>
                                                <td >
                                                   {{ optional($employee->address)->state }}
                                                </td>
                                                <td >
                                                   {{ optional($employee->address)->country }}
                                                </td>
                                                <td >
                                                   {{ optional($employee->address)->state }}
                                                </td>
                                                <td class="text-capitalize">
                                                   {{ $employee->email }} 
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            @else
                                <div class="text-center my-4">
                                    No Employee recorded
                                </div>
                            @endif

                            <footer class="card-footer">
                                <a href="{{ route("employees.index")}}" class="card-footer-item">
                                    View all
                                    <i class="fa fa-fw fa-angle-right"></i>
                                </a>
                            </footer>
                        </div>
                    </div>

                    
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
