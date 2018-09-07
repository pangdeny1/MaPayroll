@extends("layouts.master")

@section("content")
<div class="wrapper">
    <div class="page">
        <div class="sidebar-backdrop"></div>
        <!-- .page-cover -->
        @include("employees._page_cover")

        <!-- .page-navs -->
        @include("employees._page_nav")

        <!-- .page-inner -->
        <div class="page-inner">
            <!-- .page-section -->
            <div class="page-section">
                <!-- .section-block -->
                <div class="section-block">
                    <h1 class="section-title">Overview</h1>
                    <!-- metric row -->
                    <div class="metric-row">
                        <!-- metric column -->
                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="card-metric">
                                <div class="metric">
                                    <p class="metric-value h3">
                                        <sub><i class="oi oi-fork"></i></sub>
                                        <span class="value">1299</span>
                                    </p>
                                    <h2 class="metric-label"> Teams </h2>
                                </div>
                            </div>
                        </div>

                        <!-- metric column -->
                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="card-metric">
                                <div class="metric">
                                    <p class="metric-value h3">
                                        <sub><i class="oi oi-people"></i></sub>
                                        <span class="value">475</span>
                                    </p>
                                    <h2 class="metric-label"> Projects </h2>
                                </div>
                            </div>
                        </div>

                        <!-- metric column -->
                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="card-metric">
                                <div class="metric">
                                    <p class="metric-value h3">
                                        <sub><i class="fa fa-tasks"></i></sub>
                                        <span class="value">64</span>
                                    </p>
                                    <h2 class="metric-label"> Active Tasks </h2>
                                </div>
                            </div>
                        </div>

                        <!-- metric column -->
                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="card-metric">
                                <div class="metric">
                                    <p class="metric-value h3">
                                        <sub>
                                            <i class="oi oi-timer"></i>
                                        </sub>
                                        <span class="value">8</span>
                                    </p>
                                    <h2 class="metric-label"> Ongoing Tasks </h2>
                                </div>
                            </div>
                            <!-- /.metric -->
                        </div>
                    </div>
                </div>

                <!-- .card -->
                <div class="card card-fluid">
                    <header class="card-header d-flex align-items-center">
                        <span class="mr-auto">Achievement</span>
                        <!-- .card-header-control -->
                        <div class="card-header-control font-weight-normal">
                            <!-- .dropdown -->
                            <div class="dropdown">
                                <button class="btn btn-secondary" data-toggle="dropdown">
                                    <span>This Week</span>
                                    <i class="fa fa-fw fa-caret-down"></i>
                                </button>
                                <div class="dropdown-arrow dropdown-arrow-right"></div>
                                <!-- .dropdown-menu -->
                                <div class="dropdown-menu dropdown-menu-right">
                                    <!-- .list-group -->
                                    <div class="list-group list-group-flush">
                                        <!-- .list-group-item -->
                                        <a href="#" class="list-group-item justify-content-between">
                                            <span>Today</span>
                                            <span class="text-muted">Mar 27</span>
                                        </a>
                                        <!-- /.list-group-item -->
                                        <!-- .list-group-item -->
                                        <a href="#" class="list-group-item justify-content-between">
                                            <span>Yesterday</span>
                                            <span class="text-muted">Mar 26</span>
                                        </a>
                                        <!-- /.list-group-item -->
                                        <!-- .list-group-item -->
                                        <a href="#" class="list-group-item justify-content-between">
                                            <span>This Week</span>
                                            <span class="text-muted">Mar 21-27</span>
                                        </a>
                                        <!-- /.list-group-item -->
                                        <!-- .list-group-item -->
                                        <a href="#" class="list-group-item justify-content-between">
                                            <span>This Month</span>
                                            <span class="text-muted">Mar 1-31</span>
                                        </a>
                                        <!-- /.list-group-item -->
                                        <!-- .list-group-item -->
                                        <a href="#" class="list-group-item justify-content-between">
                                            <span>This Year</span>
                                            <span class="text-muted">2018</span>
                                        </a>
                                        <!-- /.list-group-item -->
                                        <!-- datepicker:range -->
                                        <input id="flatpickr" type="text" class="form-control d-none flatpickr-input" readonly="readonly"><div class="flatpickr-calendar rangeMode animate inline" tabindex="-1" style="width: 1px;"><div class="flatpickr-months"><span class="flatpickr-prev-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M5.207 8.471l7.146 7.147-0.707 0.707-7.853-7.854 7.854-7.853 0.707 0.707-7.147 7.146z"></path></svg></span><div class="flatpickr-month"><div class="flatpickr-current-month"><span class="cur-month" title="Scroll to increment">May </span><div class="numInputWrapper"><input class="numInput cur-year" type="text" pattern="\d*" tabindex="-1" title="Scroll to increment" aria-label="Year"><span class="arrowUp"></span><span class="arrowDown"></span></div></div></div><span class="flatpickr-next-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M13.207 8.472l-7.854 7.854-0.707-0.707 7.146-7.146-7.146-7.148 0.707-0.707 7.854 7.854z"></path></svg></span></div><div class="flatpickr-innerContainer"><div class="flatpickr-rContainer"><div class="flatpickr-weekdays"><div class="flatpickr-weekdaycontainer">
      <span class="flatpickr-weekday">
        Sun</span><span class="flatpickr-weekday">Mon</span><span class="flatpickr-weekday">Tue</span><span class="flatpickr-weekday">Wed</span><span class="flatpickr-weekday">Thu</span><span class="flatpickr-weekday">Fri</span><span class="flatpickr-weekday">Sat
      </span>
                                                        </div></div><div class="flatpickr-days" tabindex="-1" style="width: 1px;"><div class="dayContainer"><span class="flatpickr-day prevMonthDay" aria-label="April 29, 2018" tabindex="-1">29</span><span class="flatpickr-day prevMonthDay" aria-label="April 30, 2018" tabindex="-1">30</span><span class="flatpickr-day " aria-label="May 1, 2018" tabindex="-1">1</span><span class="flatpickr-day " aria-label="May 2, 2018" tabindex="-1">2</span><span class="flatpickr-day " aria-label="May 3, 2018" tabindex="-1">3</span><span class="flatpickr-day " aria-label="May 4, 2018" tabindex="-1">4</span><span class="flatpickr-day " aria-label="May 5, 2018" tabindex="-1">5</span><span class="flatpickr-day " aria-label="May 6, 2018" tabindex="-1">6</span><span class="flatpickr-day " aria-label="May 7, 2018" tabindex="-1">7</span><span class="flatpickr-day " aria-label="May 8, 2018" tabindex="-1">8</span><span class="flatpickr-day " aria-label="May 9, 2018" tabindex="-1">9</span><span class="flatpickr-day " aria-label="May 10, 2018" tabindex="-1">10</span><span class="flatpickr-day " aria-label="May 11, 2018" tabindex="-1">11</span><span class="flatpickr-day " aria-label="May 12, 2018" tabindex="-1">12</span><span class="flatpickr-day " aria-label="May 13, 2018" tabindex="-1">13</span><span class="flatpickr-day " aria-label="May 14, 2018" tabindex="-1">14</span><span class="flatpickr-day " aria-label="May 15, 2018" tabindex="-1">15</span><span class="flatpickr-day " aria-label="May 16, 2018" tabindex="-1">16</span><span class="flatpickr-day " aria-label="May 17, 2018" tabindex="-1">17</span><span class="flatpickr-day " aria-label="May 18, 2018" tabindex="-1">18</span><span class="flatpickr-day " aria-label="May 19, 2018" tabindex="-1">19</span><span class="flatpickr-day " aria-label="May 20, 2018" tabindex="-1">20</span><span class="flatpickr-day " aria-label="May 21, 2018" tabindex="-1">21</span><span class="flatpickr-day " aria-label="May 22, 2018" tabindex="-1">22</span><span class="flatpickr-day " aria-label="May 23, 2018" tabindex="-1">23</span><span class="flatpickr-day " aria-label="May 24, 2018" tabindex="-1">24</span><span class="flatpickr-day " aria-label="May 25, 2018" tabindex="-1">25</span><span class="flatpickr-day " aria-label="May 26, 2018" tabindex="-1">26</span><span class="flatpickr-day " aria-label="May 27, 2018" tabindex="-1">27</span><span class="flatpickr-day " aria-label="May 28, 2018" tabindex="-1">28</span><span class="flatpickr-day " aria-label="May 29, 2018" tabindex="-1">29</span><span class="flatpickr-day today" aria-label="May 30, 2018" aria-current="date" tabindex="-1">30</span><span class="flatpickr-day " aria-label="May 31, 2018" tabindex="-1">31</span><span class="flatpickr-day nextMonthDay" aria-label="June 1, 2018" tabindex="-1">1</span><span class="flatpickr-day nextMonthDay" aria-label="June 2, 2018" tabindex="-1">2</span><span class="flatpickr-day nextMonthDay" aria-label="June 3, 2018" tabindex="-1">3</span><span class="flatpickr-day nextMonthDay" aria-label="June 4, 2018" tabindex="-1">4</span><span class="flatpickr-day nextMonthDay" aria-label="June 5, 2018" tabindex="-1">5</span><span class="flatpickr-day nextMonthDay" aria-label="June 6, 2018" tabindex="-1">6</span><span class="flatpickr-day nextMonthDay" aria-label="June 7, 2018" tabindex="-1">7</span><span class="flatpickr-day nextMonthDay" aria-label="June 8, 2018" tabindex="-1">8</span><span class="flatpickr-day nextMonthDay" aria-label="June 9, 2018" tabindex="-1">9</span></div></div></div></div></div>
                                        <!-- /datepicker:range -->
                                    </div>
                                    <!-- /.list-group -->
                                </div>
                                <!-- /.dropdown-menu -->
                            </div>
                            <!-- /.dropdown -->
                        </div>
                        <!-- /.card-header-control -->
                    </header>
                    <!-- grid row -->
                    <div class="row no-gutters">
                        <!-- grid column -->
                        <div class="col-lg-8 order-lg-4">
                            <!-- .card-body -->
                            <div class="card-body border-left"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                                <canvas id="canvas-achievement" class="chartjs chartjs-render-monitor" width="600" height="250" style="display: block; width: 600px; height: 250px;"></canvas>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /grid column -->
                        <!-- grid column -->
                        <div class="col-lg-4 order-lg-1">
                            <div class="list-group list-group-flush list-group-bordered">
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Revenue</span>
                                    <strong>$ 17,254</strong>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Profit</span>
                                    <strong>$ 15,794</strong>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Teams</span>
                                    <strong>8</strong>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Projects</span>
                                    <strong>52</strong>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Completion Rate</span>
                                    <strong>89%</strong>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Clients</span>
                                    <strong>42</strong>
                                </div>
                            </div>
                        </div>
                        <!-- /grid column -->
                    </div>
                    <!-- /grid row -->
                </div>
            </div>
        </div>
    </div>
</div>
@endsection