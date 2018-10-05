@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    #{{ $otherincome->id }} - {{ $otherincome->payrollname }}
                </div>

                <div class="panel-body">
                    @include('includes.flash')

                    <div class="payroll-info">
                        <p><b>payroll Description :: </b>{{ $otherincome->payrolldesc }}</p>
                      
                        <p>
                        @if ($otherincome->status === 'Open')
                            Status: <span class="label label-success">{{ $otherincome->status }}</span>
                        @else
                            Status: <span class="label label-danger">{{ $otherincome->status }}</span>
                        @endif
                        </p>
                        <p>Created on: {{ $otherincome->created_at->diffForHumans() }}</p>
                    </div>

                    <hr>


            </div>
        </div>
    </div>
@endsection