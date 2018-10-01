@extends("layouts.master")

@section("content")
    @if($otherincomes->count())
        <div class="wrapper">
            <div class="page">
                <div class="page-inner">
                    <header class="page-title-bar">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{ route("home") }}">
                                        <i class="breadcrumb-icon fa fa-angle-left mr-2"></i> Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item active">
                                    Incomes
                                </li>
                            </ol>
                        </nav>
                        <div class="d-sm-flex align-items-sm-center">
                            <h1 class="page-title mr-sm-auto mb-0">
                                Incomes
                                 @include('includes.flash')
                            </h1>
                            <div class="btn-toolbar">
                                <a href="" class="btn btn-light">
                                    <i class="oi oi-data-transfer-download"></i>
                                    <span class="ml-1">Export as excel</span>
                                </a>
                                
                                @can("create", \App\Farmer::class)
                                <a href="{{url('createotherincome')}}" class="btn btn-primary">
                                    <span class="fas fa-plus mr-1"></span>
                                    New Employee Income
                                </a>
                                @endcan
                            </div>
                        </div>
                    </header>

                    <div class="page-section">
                        <section class="card shadow-1 border-0 card-fluid">
                            <header class="card-header">
                                <ul class="nav nav-tabs card-header-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link {{ request()->query("status") ? "" : "active" }}" href="{{ route("farmers.index") }}">
                                            All
                                        </a>
                                    </li>
                                </ul>
                            </header>

                            <div class="card-body">

                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="oi oi-magnifying-glass"></span>
                                            </span>
                                        </div>
                                        <form action="">
                                            <input type="text" name="q" class="form-control" placeholder="Search record...">
                                        </form>
                                    </div>
                                </div>

                                <!-- .table-responsive -->

                                <div class="text-muted">  </div>

                                

                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                   <tr>
                                    <th>Employee</th>
                                    <th>Deduction Type</th>
                                    <th>Term</th>
                                    <th>Amount</th>
                                    <th>Percent</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    
                                    <th>View </th>
                                    <th >Edit</th>
                                     <th >Delete</th>
                                </tr>
                                        </thead>
                                        <tbody>
                                             @foreach ($otherincomes as $otherincome)
                                           <td>
                                      @foreach ($employees as $employee)
                                        @if ($employee->employeeid == $otherincome->employeeid)
                                            {{ $employee->firstname }} {{$employee->lastname}}
                                        @endif
                                    @endforeach
                                    </td>
                                    <td>
                                       {{ $otherincome->othincid }}
                                    </td>
                                    <td>
                                  {{ $otherincome->amount_term}}
                                    </td>
                                    <td>
                                        {{ $otherincome->othincamount }}
                                    </td>
                                    <td>
                                        {{ $otherincome->percent }}
                                    </td>
                                    <td>{{ $otherincome->othdate }}</td>
                                    <td>{{ $otherincome->stopdate }}</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>

                                <!-- .pagination -->
                                
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    @else
        <div class="wrapper">
            <!-- .empty-state -->
            <section id="notfound-state" class="empty-state">
                <!-- .empty-state-container -->
                <div class="empty-state-container">
                    <div class="state-figure">
                        <img class="img-fluid"
                             src="{{ asset("themes/looper/assets/images/illustration/img-7.png") }}"
                             alt=""
                             style="max-width: 300px"
                        >
                    </div>
                    <h3 class="state-header"> No Content, Yet. </h3>
                    <p class="state-description lead text-muted">
                        Use the button below to Register new .
                    </p>
                    @can("create", \App\Farmer::class)
                    <div class="state-action">
                        <a href="{{url('createotherincome')}}" class="btn btn-primary">Register new</a>
                    </div>
                    @endcan
                </div>
                <!-- /.empty-state-container -->
            </section>
            <!-- /.empty-state -->
        </div>
    @endif
@endsection