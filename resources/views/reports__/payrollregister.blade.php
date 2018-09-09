@if($headertype=="Excell")

    @include('reports.excellheader');


@elseif ($headertype=="Preview")

@else

@endif

<head>
    <title>Payroll register  </title>
    </head>
    <style type="text/css">
table {
  margin-top: 0.5em;
}

thead {
  background-color: #eeeeee;
}

tbody {
  background-color: #ffffee;
}

th,td {
  padding: 3pt;
}

table.collapse {
  border-collapse: collapse;

}

table.collapse td {

}
</style>

<?php
 $db="medahr";
 $payrollDe=$payrollperiod->payrolldesc;
 $PayrollID=$payrollperiod->id;
    //$PayrollID=3;
    require_once ('includes/MiscFunctions.php');
    include('includes/ConnectDB.inc');
    include('includes/ConnectDB_mysql.inc');
    include('includes/prlFunctions.php'); 

$sql = "SELECT firstname,lastname,middlename,employeecode,prlpayrolltrans.payrollid as payrollid,payrolldesc,
             prlpayrolltrans.employeeid as employeeid,basicpay,othincome,absent,philhealth,
             prlemployeemaster.hourlyrate as hourlyrate,areaspay,late,taxableincome,reghrs,
             fee,otpay,grosspay,loandeduction,sss,hdmf,gratuity,tax,totaldeduction,netpay,
             sdl,wcf,sssEmployer,prlpayrolltrans.fsmonth as fsmonth
            FROM prlpayrolltrans
            LEFT JOIN prlemployeemaster ON (prlemployeemaster.employeeid=prlpayrolltrans.employeeid)
            LEFT JOIN prlpayrollperiod ON (prlpayrollperiod.payrollid=prlpayrolltrans.payrollid)
            WHERE prlpayrolltrans.payrollid='" .$PayrollID. "'";

            $result=mysqli_query($sql);
            if(mysqli_num_rows($result) < 1)
            {
                echo "Payroll for ".$payrollDe." is yet to be processed";
            }

else
{
            ?>

<table class="collapse" width='90%' align="center" border="1">
  <thead>
    <tr> <td colspan="20"><center><?php echo  $company->coyname; ?></center></td>
    </tr>
    <tr>

      <td colspan="20"><center>Payroll Report :: <?php  echo GetPayrollRow($PayrollID, $db,1) ;?></center></td>
    </tr>



    <tr bgcolor='#4F81BD'>

    <th align='left'><font color='white'>No.</font></th>
    <th align='left'><font color='white'>Period</font></th>
    <th align='left'><font color='white'>Code</font></th><th align='left'><font color='white'>Employee</font></th>
    <th align='right'><font color='white'>Reg Days</font></th>
    <th align='right'><font color='white'>Rate Per Day</font></th>
    <th align='right'><font color='white'>Basic</font></th>
    <th align='right'><font color='white'>Basic Areas</font></th>
    <?php
    GetReportColums($PayrollID, $db);
    ?>
    <th align='right'><font color='white'>Gross</font></th>
    

    <?php
    GetSSSReportsColums($PayrollID, $db);


    ?>
    <th align='right'><font color='white'>Taxable Earning</font></th> 
    
    
    <th align='right'><font color='white'>PAYE</font></th>
    <?php
        GetLoanReportsColums($PayrollID ,$db);

        GetOtherDedColums($PayrollID, $db)
        ?>
        <th align='right'><font color='white'>Net Pay</font></th>
    
    <th align='right'><font color='white'>Social Security Employer Contr</th><th align='right'><font color='white'>SDL</th><th align='right'><font color='white'>WCF</th></tr></thead><tbody>
        
     
     
    </tr>
    </thread>
    <tbody>


   <?php
    $sn=0;
        $tBasicPay=0;
        $tGrossPay=0;
        $tAreasPay=0;
        $tSSS=0;
        $tHdmf=0;
        $tPhilHealth=0;
        $tTax=0;
        $tTotalDeduction=0;
        $tTaxableIncome=0;
        $tNet=0;
        $tGratuity=0;
        $salartTotal=0;
        $tLoan=0;
        $tMngtfee=0;
        $tSdl=0;
        $tWcf=0;
        $tRegHrs=0;
        $tHourRate=0;
        $tsssEmployer=0;
        $fpension=0;
        $salary=0;
        $pension_amnt=0;
        $total=0;

   while($rows=mysql_fetch_array($result)){
    extract($rows);
   $sn=$sn+1;
        $empno=$rows['employeeid'];
        
        $FullName=$rows['firstname']." ".$rows['middlename']." ".$rows['lastname'];
        $payrollid=$rows['payrollid'];
        $payrollDesc=$rows['payrolldesc'];
        $empCode=$rows['employeecode'];
        $areasPay=$rows['areaspay'];
        $basicPay=$rows['basicpay'];
        $absent=$rows['absent'];
        $grossPay=$rows['grosspay'];
        $taxableIncome=$rows['taxableincome'];
        $sss=$rows['sss'];
        $mngtfee=$rows['fee'];
        $gratuity=$rows['gratuity'];
        $hdmf=$rows['hdmf'];
        $philHealth=$rows['philhealth'];
        $tax=$rows['tax'];
        $totalDeduction=$rows['totaldeduction'];
        $net=$rows['netpay'];
        $loan=$rows['loandeduction'];
        $regHrs=$rows['reghrs'];
        $hourRate=$rows['hourlyrate'];
        $sdl=$rows['sdl'];
        $wcf=$rows['wcf'];
        $sssEmployer=$rows['sssEmployer'];
        
        
        // Here goes Sum of All Transaction 
        $tBasicPay+=$basicPay;
        $tGrossPay+=$grossPay;
        $tAreasPay+=$areasPay;
        $tSSS+=$sss;
        $tHdmf+=$hdmf;
        $tPhilHealth+=$philHealth;
        $tTax+=$tax;
        $tTotalDeduction+=$totalDeduction;
        $tTaxableIncome+=$taxableIncome;
        $tNet+=$net;
        $tGratuity+=$gratuity;
        $salartTotal+=$salary;
        $tLoan+=$loan;
        $tMngtfee+=$mngtfee;
        $tSdl+=$sdl;
        $tWcf+=$wcf;
        $tRegHrs+=$regHrs;
        $tHourRate+=$hourRate;
        $tsssEmployer+=$sssEmployer;
        $fpension=number_format($pension_amnt,2);
    

   ?>

   <tr>
        <td><?php echo $sn ?></td>
        <td><?php echo $payrollDe; ?></td>
        <td><?php echo $empCode ?></td>
        <td><?php echo $FullName ?></td>
        <td align='right'><?php echo number_format(($regHrs/8),2) ?></td>
        <td align='right'><?php echo number_format(($hourRate *8),2) ?></td>
        
        <td align='right'><?php echo number_format($basicPay,2) ?></td>
        <td align='right'><?php echo number_format($areasPay,2) ?></td>
        <?php

        GetReportColumsData($PayrollID,$empno, $db);

        ?>
        <td align='right'><?php echo number_format($grossPay,2) ?></td>
        


         <?php
        DisplaySSSAmount($PayrollID,$empno,$db);
         ?>
     



        
        <td align='right'><?php echo number_format($taxableIncome,2)?></td> 
        
        <td align='right'><?php echo number_format($tax,2) ?></td>
        <?php
        
        DisplayLoanAmount($PayrollID,$empno,$db);

        GetOtherDedColumsData($PayrollID,$empno,$db)
        ?>
        <td align='right'><?php echo number_format($net,2) ?></td> 
        <td align='right'><?php echo number_format($sssEmployer,2)?></td> 
        <td align='right'><?php echo number_format($sdl,2)?></td>
         <td align='right'><?php echo number_format($wcf,2) ?></td></tr>

   <?php
}

        $ftotal=number_format($total,2);
        $salartTotal=number_format($salartTotal,2);

?>

        <tr bgcolor='#4F81BD'><th colspan='3' ><font color='white'>TOTAL</th>

        <th align='right'><font color='white'><?php $sn ?></th>
        <th align='right'><font color='white'><?php echo number_format(($tRegHrs/8),2)?></th>
        <th align='right'><font color='white'><?php echo number_format(($tHourRate*8),2)?></th>
        
        <th align='right'><font color='white'><?php echo number_format($tBasicPay,2)?></th>
        <th align='right'><font color='white'><?php echo number_format($tAreasPay,2)?></th>
            <?php

       GetReportColumsDataSum($PayrollID,$empno, $db);

        ?>
        <th align='right'><font color='white'><?php echo number_format($tGrossPay,2)?></th>
        
        <?php 
        DisplayTotalSSSAmount($PayrollID,$db);

        ?>
        <th align='right'><font color='white'><?php echo number_format($tTaxableIncome,2)?></th>
        
        
        <th align='right'><font color='white'><?php echo number_format($tTax,2)?></th>
        <?php
        
        DisplayLoanAmountSum($PayrollID,$db);
        GetOtherDedColumsDataSum($PayrollID,$empno,$db)
        ?>
        <th align='right'><font color='white'><?php echo number_format($tNet,2)?></th>
        <th align='right'><font color='white'><?php echo number_format($tsssEmployer,2)?></th>
        <th align='right'><font color='white'><?php echo number_format($tSdl,2)?></th><th align='right'>
        <font color='white'><?php echo number_format($tWcf,2)?></th></tr>


     </tbody>
  </table>
  <?php
}
  ?>

 
 
