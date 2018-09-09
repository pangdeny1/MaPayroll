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
if ($Status=='Open') {
   echo ("<center><h3><font color=green >Payroll is already open...</font></h3></center>");
} else {  
            $sql = "SELECT loantableid,amount
                FROM prlloandeduction
                WHERE payrollid='$PayrollID'";
                $LoanDetails = DB_query($sql,$db);          
                if(DB_num_rows($LoanDetails)>0)
                {
                    while ($loanrow = DB_fetch_array($LoanDetails))
                    {
                        $LoanPayment=$loanrow['amount'];
                        if ($LoanPayment>0 or $LoanPayment<>null) {    
                            $sql = 'UPDATE prlloanfile SET ytddeduction=ytddeduction-'.$LoanPayment.', loanbalance=loanbalance+'.$LoanPayment.'
                            WHERE loantableid = ' . $loanrow['loantableid'];
                            $PostLoanPay = DB_query($sql,$db);                  
                        }
                    }
                }   
 
        $sql = "UPDATE prlpayrollperiod SET
                    payclosed=1
                     WHERE id = '$PayrollID'";
                    $ErrMsg = _('The payroll record could not be updated because');
                    $DbgMsg = _('The SQL that was used to update the payroll failed was');
                    $result = DB_query($sql, $db, $ErrMsg, $DbgMsg);
                    prnMsg(_('The payroll master record for') . ' ' . $PayrollID . ' ' . _('has been opened'),'success');
    //exit("Payroll is succesfully re-opened...");
}

        

    ?>


@endsection