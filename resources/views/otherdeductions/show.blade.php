@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    #{{ $payroll->id }} - {{ $payroll->payrollname }}
                </div>

                <div class="panel-body">
                    @include('includes.flash')

                    <div class="payroll-info">
                        <p><b>payroll Description :: </b>{{ $payroll->payrolldesc }}</p>
                      
                        <p>
                        @if ($payroll->status === 'Open')
                            Status: <span class="label label-success">{{ $payroll->status }}</span>
                        @else
                            Status: <span class="label label-danger">{{ $payroll->status }}</span>
                        @endif
                        </p>
                        <p>Created on: {{ $payroll->created_at->diffForHumans() }}</p>
                    </div>

                    <hr>


            </div>
        </div>
    </div>
@endsection