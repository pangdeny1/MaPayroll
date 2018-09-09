@extends("layouts.master")

@section("content")
    

    <?php
    //$db="medahr";
    $PayrollID=$payroll->id;
        require_once ('includes/MiscFunctions.php');
        include('includes/ConnectDB.inc');
        include('includes/ConnectDB_mysql.inc');
        include('includes/prlFunctions.php'); 
        $Status = GetOpenCloseStr(GetPayrollRow($PayrollID, $db,11));
if ($Status=='Closed') {
   exit("You Cannot Void ,Payroll is already closed. Re-open first...");
} else { 
$sql="DELETE FROM prlpayrolltrans WHERE payrollid ='" . $PayrollID . "'";
DB_query($sql,$db);
$sql_sss="DELETE FROM prlempsssfile WHERE payrollid ='" . $PayrollID . "'";
DB_query($sql_sss,$db);

$sql_bb="DELETE FROM prlemployeebudgettrans WHERE payrollid ='" . $PayrollID . "'";
DB_query($sql_bb,$db);

$sql_ph="DELETE FROM prlempphfile WHERE payrollid ='" . $PayrollID . "'";
    DB_query($sql_ph,$db);
    $sql_hd="DELETE FROM prlemphdmffile WHERE payrollid ='" . $PayrollID . "'";
    DB_query($sql_hd,$db);
$sql_tax="DELETE FROM prlemptaxfile WHERE payrollid ='" . $PayrollID . "'";
DB_query($sql_tax,$db);


 $sql_OtheTrans="DELETE FROM prlothericometrans WHERE payrollid ='" . $PayrollID . "'";
DB_query($sql_OtheTrans,$db);
  //exit("Not implemented at this moment...");
  
 
  echo ("<center><h3><font color=green >Payroll Voided Successfully.</font></h3></center>");
  }
    ?>


@endsection