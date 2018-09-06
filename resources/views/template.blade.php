@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page">
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#">
                                <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Produced batch history</a>
                            </li>
                        </ol>
                    </nav>

                    <h3>Produced batch history</h3>
                    <hr class="mb-5">

                    <div class="lead">
                        <span class="font-weight-bold">Raw material details</span>
                    </div>
                </header>

                <div class="card mb-5">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th width="12.5%">Farm</th>
                                <td width="12.5%" class="text-right">Arusha Group</td>
                                <th width="12.5%">Variety</th>
                                <td width="12.5%" class="text-right">08</td>
                                <th width="12.5%">Time depart</th>
                                <td width="12.5%" class="text-right">Jan 12, 2018</td>
                                <th width="12.5%">No. Crates</th>
                                <td width="12.5%" class="text-right">120</td>
                            </tr>
                            <tr>
                                <th width="12.5%">Produce</th>
                                <td width="12.5%" class="text-right">07</td>
                                <th width="12.5%">Harvest date</th>
                                <td width="12.5%" class="text-right">08</td>
                                <th width="12.5%">Farm weight</th>
                                <td width="12.5%" class="text-right">12450Kg.</td>
                                <th width="12.5%">Arrival temp.</th>
                                <td width="12.5%" class="text-right">34<sup>o</sup>C</td>
                            </tr>
                            <tr>
                                <th width="12.5%">Block #</th>
                                <td width="12.5%" class="text-right">07</td>
                                <th width="12.5%">Delivery date</th>
                                <td width="12.5%" class="text-right">08</td>
                                <th width="12.5%">P/H weight</th>
                                <td width="12.5%" class="text-right">12450Kg.</td>
                                <th width="12.5%">Arrival time</th>
                                <td width="12.5%" class="text-right"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <header class="page-title-bar">
                    <div class="d-sm-flex align-items-sm-center">
                        <div class="lead mr-sm-auto mb-0">
                            <span class="font-weight-bold">Processing details</span>
                        </div>
                
                        <div class="btn-toolbar">
                            <button type="button" class="btn btn-light">
                                <i class="far fa-file-excel"></i>
                                <span class="ml-1">Export as excel</span>
                            </button>

                            <button type="button" class="btn btn-light">
                                <i class="far fa-file-pdf"></i>
                                <span class="ml-1">Export as pdf</span>
                            </button>

                            <button type="button" class="btn btn-light">
                                <i class="fas fa-print"></i>
                                <span class="ml-1">Print</span>
                            </button>
                        
                            
                            <a href="{{ route("purchases.create") }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                New purchase
                            </a>
                        </div>
                    </div>
                </header>

                <div class="page-section">
                    @if (session('status'))
                        <div class="alert alert-success alert-dismissible fade show has-icon">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <div class="alert-icon">
                                <i class="fas fa-info-circle"></i>
                            </div>
                            <strong>Well done!</strong> {{ session('status') }}
                        </div>
                    @endif

                    <section class="card card-fluid">
                        <!-- .table-responsive -->
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="text-left"  nowrap>Household code</th>
                                        <th class="text-left"  nowrap>No. Crates</th>
                                        <th class="text-left"  nowrap>Farm weight</th>
                                        <th class="text-left"  nowrap>P/H weight</th>
                                        <th class="text-left"  nowrap>Graded weight</th>
                                        <th class="text-left"  nowrap>Rejected weight</th>
                                        <th class="text-right" nowrap>Rejected %</th>
                                        <th class="text-left"  nowrap>Quantity remarks</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th nowrap>Total</th>
                                        <th nowrap>12</th>
                                        <th nowrap>89Kg.</th>
                                        <th nowrap>85Kg.</th>
                                        <th nowrap>83Kg.</th>
                                        <th nowrap>2kg</th>
                                        <th nowrap></th>
                                        <th nowrap></th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td nowrap>0012</td>
                                        <td nowrap>12</td>
                                        <td nowrap>89Kg.</td>
                                        <td nowrap>85Kg.</td>
                                        <td nowrap>83Kg.</td>
                                        <td nowrap>2kg</td>
                                        <td nowrap>12%</td>
                                        <td nowrap></td>
                                    </tr>
                                    <tr>
                                        <td nowrap>0012</td>
                                        <td nowrap>12</td>
                                        <td nowrap>89Kg.</td>
                                        <td nowrap>85Kg.</td>
                                        <td nowrap>83Kg.</td>
                                        <td nowrap>2kg</td>
                                        <td nowrap>12%</td>
                                        <td nowrap></td>
                                    </tr>
                                    <tr>
                                        <td nowrap>0012</td>
                                        <td nowrap>12</td>
                                        <td nowrap>89Kg.</td>
                                        <td nowrap>85Kg.</td>
                                        <td nowrap>83Kg.</td>
                                        <td nowrap>2kg</td>
                                        <td nowrap>12%</td>
                                        <td nowrap></td>
                                    </tr>
                                    <tr>
                                        <td nowrap>0012</td>
                                        <td nowrap>12</td>
                                        <td nowrap>89Kg.</td>
                                        <td nowrap>85Kg.</td>
                                        <td nowrap>83Kg.</td>
                                        <td nowrap>2kg</td>
                                        <td nowrap>12%</td>
                                        <td nowrap></td>
                                    </tr>
                                    <tr>
                                        <td nowrap>0012</td>
                                        <td nowrap>12</td>
                                        <td nowrap>89Kg.</td>
                                        <td nowrap>85Kg.</td>
                                        <td nowrap>83Kg.</td>
                                        <td nowrap>2kg</td>
                                        <td nowrap>12%</td>
                                        <td nowrap></td>
                                    </tr>
                                    <tr>
                                        <td nowrap>0012</td>
                                        <td nowrap>12</td>
                                        <td nowrap>89Kg.</td>
                                        <td nowrap>85Kg.</td>
                                        <td nowrap>83Kg.</td>
                                        <td nowrap>2kg</td>
                                        <td nowrap>12%</td>
                                        <td nowrap></td>
                                    </tr>
                                    <tr>
                                        <td nowrap>0012</td>
                                        <td nowrap>12</td>
                                        <td nowrap>89Kg.</td>
                                        <td nowrap>85Kg.</td>
                                        <td nowrap>83Kg.</td>
                                        <td nowrap>2kg</td>
                                        <td nowrap>12%</td>
                                        <td nowrap></td>
                                    </tr>
                                    <tr>
                                        <td nowrap>0012</td>
                                        <td nowrap>12</td>
                                        <td nowrap>89Kg.</td>
                                        <td nowrap>85Kg.</td>
                                        <td nowrap>83Kg.</td>
                                        <td nowrap>2kg</td>
                                        <td nowrap>12%</td>
                                        <td nowrap></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection