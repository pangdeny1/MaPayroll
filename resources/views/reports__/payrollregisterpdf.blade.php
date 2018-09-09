<?php
$PageSecurity = 2;
 
    $db="medahr";
    $PayrollID=$payrollperiod->id;
    include('includes/config.php');
    include('includes/PDFStarter.php');
    include('includes/ConnectDB.inc');
    include('includes/DateFunctions.inc');
    include('includes/prlFunctions.php');

    /* A4_Landscape */

    $Page_Width=842;
    $Page_Height=595;
    $Top_Margin=20;
    $Bottom_Margin=20;
    $Left_Margin=25;
    $Right_Margin=22;

    $PageSize = array(0,0,$Page_Width,$Page_Height);
    $pdf = new Cpdf($PageSize);

    $PageNumber = 0;

    $pdf->selectFont('./fonts/Helvetica.afm');

/* Standard PDF file creation header stuff */
    $pdf->addinfo('Title', _('Payroll Register Report') );
    $pdf->addinfo('Subject', _('Payroll Register') );


    $PageNumber=1;
    $line_height=12;
    
    $PayDesc = GetPayrollRow($PayrollID, $db,1);
    $FromPeriod = GetPayrollRow($PayrollID, $db,3);
    $ToPeriod = GetPayrollRow($PayrollID, $db,4);
    $PageNumber = 0;
    $FontSize = 10;
    $pdf->addinfo('Title', _('Payroll Register') );
    $pdf->addinfo('Subject', _('Payroll Register') );
    $line_height = 12;
            $EmpID ='';
            $Basic = 0;
            $OthInc = 0;
            $areas=0;
            $Lates = 0;
            $Absent = 0;
            $OT = 0;
            $Gross = 0;
            $SSS = 0;
            $HDMF ='';
            $PhilHealt = 0;
            $Loan = 0;
            $Tax = 0;
            $Net = 0;
    include('includes/PDFPayRegisterPageHeader.inc');
    $k=0; //row colour counter
    /*
    if(!empty($_POST['StationID']))
    {
    $sql = "SELECT employeeid,basicpay,othincome,taxableincomen,otherdeduction,absent,areaspay,late,otpay,grosspay,loandeduction,sss,hdmf,tax,netpay
            FROM prlpayrolltrans
            WHERE stationid='".$_POST['StationID']."' AND prlpayrolltrans.payrollid='" .$PayrollID. "'";
            
            }
            */
            
    //else{
    $sql = "SELECT employeeid,basicpay,othincome,taxableincome,otherdeduction,absent,areaspay,late,otpay,grosspay,loandeduction,sss,hdmf,tax,netpay
            FROM prlpayrolltrans
            WHERE prlpayrolltrans.payrollid='" .$PayrollID. "'";
            //}
            
                    
    $PayResult = DB_query($sql,$db);
    if(DB_num_rows($PayResult)>0)
    {
        while ($myrow=DB_fetch_array($PayResult)) {
            $EmpID =$myrow['employeeid'];
            $FullName=GetName($EmpID, $db);
            $Basic =$myrow['basicpay'];
            $OthInc = $myrow['othincome'];
            $OT =$myrow['otpay'];
            $OtherDeduction =$myrow['otherdeduction'];
            $TaxableIncome =$myrow['taxableincome'];
            $Gross =$myrow['grosspay'];
            $Absent=$myrow['absent'];
            $Areas=$myrow['areaspay'];
            $SSS =$myrow['sss'];
            $HDMF =$myrow['hdmf'];
            $PhilHealth = $myrow['philhealth'];
            $Loan =$myrow['loandeduction'];
            $Tax = $myrow['tax'];
            $Net =$myrow['netpay'];

            $GTBasic +=$myrow['basicpay'];
            $GTOthInc += $myrow['othincome'];
            $GTOT +=$myrow['otpay'];
            $GTGross +=$myrow['grosspay'];
            
            $GTTaxableIncome +=$myrow['taxableincome'];
            $GTOtherDeduction +=$myrow['otherdeduction'];
            
            $GTAreas +=$myrow['areaspay'];
            $GTAbsent +=$myrow['absent'];
            $GTSSS +=$myrow['sss'];
            $GTHDMF +=$myrow['hdmf'];
            $GTPhilHealth += $myrow['philhealth'];
            $GTLoan +=$myrow['loandeduction'];
            $GTTax += $myrow['tax'];
            $GTNet +=$myrow['netpay'];
            
            //$YPos -= (2 * $line_height);  //double spacing
            $FontSize = 8;
            $pdf->selectFont('./fonts/Helvetica.afm');
            $LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,50,$FontSize,$EmpID);
            $LeftOvers = $pdf->addTextWrap(100,$YPos,120,$FontSize,$FullName,'left');
            $LeftOvers = $pdf->addTextWrap(223,$YPos,52,$FontSize,number_format($Basic,2),'right');
            $LeftOvers = $pdf->addTextWrap(272,$YPos,52,$FontSize,number_format($SSS,2),'right');
            $LeftOvers = $pdf->addTextWrap(325,$YPos,52,$FontSize,number_format($TaxableIncome,2),'right');
            $LeftOvers = $pdf->addTextWrap(374,$YPos,52,$FontSize,number_format($Tax,2),'right');       
            $LeftOvers = $pdf->addTextWrap(405,$YPos,52,$FontSize,number_format($OtherDeduction,2),'right');
            $LeftOvers = $pdf->addTextWrap(465,$YPos,52,$FontSize,number_format($Loan,2),'right');
            //$LeftOvers = $pdf->addTextWrap(530,$YPos,52,$FontSize,number_format($SSS,2),'right');
            $LeftOvers = $pdf->addTextWrap(540,$YPos,52,$FontSize,number_format($Net,2),'right');
            /* //$LeftOvers = $pdf->addTextWrap(569,$YPos,50,$FontSize,number_format($PhilHealth,2),'right');
            $LeftOvers = $pdf->addTextWrap(660,$YPos,52,$FontSize,number_format($Loan,2),'right');
            $LeftOvers = $pdf->addTextWrap(720,$YPos,52,$FontSize,number_format($Tax,2),'right');
            $LeftOvers = $pdf->addTextWrap(780,$YPos,52,$FontSize,number_format($Net,2),'right'); */
            $YPos -= $line_height;
            if ($YPos < ($Bottom_Margin)){      
                include('./fonts/PDFPayRegisterPageHeader.inc');
            }
        }
        
    }//end of loop
    
            $LeftOvers = $pdf->line($Page_Width-$Right_Margin, $YPos,$Left_Margin, $YPos);
            $YPos -= (2 * $line_height);
            $LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,150,$FontSize,'Grand Total');
            $LeftOvers = $pdf->addTextWrap(221,$YPos,52,$FontSize,number_format($GTBasic,2),'right');
            $LeftOvers = $pdf->addTextWrap(272,$YPos,52,$FontSize,number_format($GTSSS,2),'right');
            $LeftOvers = $pdf->addTextWrap(325,$YPos,52,$FontSize,number_format($GTTaxableIncome,2),'right');
            $LeftOvers = $pdf->addTextWrap(374,$YPos,52,$FontSize,number_format($GTTax,2),'right');     
            $LeftOvers = $pdf->addTextWrap(405,$YPos,52,$FontSize,number_format($GTOtherDeduction,2),'right');
            $LeftOvers = $pdf->addTextWrap(465,$YPos,52,$FontSize,number_format($GTLoan,2),'right');
            $LeftOvers = $pdf->addTextWrap(540,$YPos,52,$FontSize,number_format($GTNet,2),'right');
            //$LeftOvers = $pdf->addTextWrap(590,$YPos,52,$FontSize,number_format($GTHDMF,2),'right');
            /* //$LeftOvers = $pdf->addTextWrap(569,$YPos,50,$FontSize,number_format($GTPhilHealth,2),'right');
            $LeftOvers = $pdf->addTextWrap(660,$YPos,52,$FontSize,number_format($GTLoan,2),'right');
            $LeftOvers = $pdf->addTextWrap(720,$YPos,52,$FontSize,number_format($GTTax,2),'right');
            $LeftOvers = $pdf->addTextWrap(780,$YPos,52,$FontSize,number_format($GTNet,2),'right');
            */
                        
            $LeftOvers = $pdf->line($Page_Width-$Right_Margin, $YPos,$Left_Margin, $YPos);

    
    $pdfcode = $pdf->output();
    $len = strlen($pdfcode);
    if ($len<=20){
        $title = _('Payroll Register Error');
        include('./fonts/header.inc');
        echo '<p>';
        prnMsg( _('There were no entries to print out for the selections specified') );
        echo '<BR><A HREF="'. $rootpath.'/index.php?' . SID . '">'. _('Back to the menu'). '</A>';
        include('./fonts/footer.inc');
        exit;
    } else {
        header('Content-type: application/pdf');
        header('Content-Length: ' . $len);
        header('Content-Disposition: inline; filename=PayrollRegister.pdf');
        header('Expires: 0');
        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Pragma: public');

        $pdf->Stream();

    }
    exit;


?>