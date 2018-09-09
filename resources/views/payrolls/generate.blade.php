@extends("layouts.master")

@section("content")
    

    <?php
    //$db="medahr";
    $PayrollID=$payroll->id;


        require_once ('includes/MiscFunctions.php');
        include('includes/ConnectDB.inc');
        include('includes/ConnectDB_mysql.inc');
        include('includes/prlFunctions.php'); 

        
        include('includes/prlGenerateData.php');

        include('includes/prlComputeBasic.php');
        include('includes/prlComputeGratuity.php');
        include('includes/prlComputeHoursWorked.php');
        include('includes/prlComputeAreas.php');
        include('includes/prlComputeAbsent.php');
        //include('includes/prlComputeOthIncome.php');
        include('includes/prlComputeOtherIncome2.php');
        include('includes/prlComputeInvoiceIncome.php');
        include('includes/prlComputeOT.php');
        
        include('includes/prlComputeGross.php');
        include('includes/prlComputeLoan.php');
        //include('includes/prlComputeHESLB.php');
        include('includes/prlComputeSSS.php');
        include('includes/prlComputeHDMF.php');
        include('includes/prlComputePH.php');
        include('includes/prlComputeTaxableIncome.php');
        include('includes/prlComputeOtherDeductions.php');
        
        include('includes/prlComputeTAX.php');
        
        include('includes/prlComputeSdl.php');
        include('includes/prlComputeWcf.php');
        
        include('includes/prlComputeTotalDeduction.php');
        //include('includes/prlComputeHESLB.php');
        include('includes/prlComputeNet.php');

        include('includes/prlComputeEmployeeBudget.php');

        

    ?>


@endsection