@extends("layouts.master")

@section("content")
    

    <?php
    $PayrollID=$payroll->id;


       echo "The Payroll". $PayrollID." Voided successfully" ;

        

    ?>


@endsection