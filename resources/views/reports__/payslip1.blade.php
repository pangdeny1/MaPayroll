 <?php
 if($headertype=="PDF") {
    
    $PayrollID=$payrollperiod->id;
    
    include('includes/config.php');
    include('includes/PDFStarter.php');
    include('includes/ConnectDB.inc');
    include('includes/DateFunctions.inc');
    include('includes/prlFunctions.php');

    $Page_Width=595;
    $Page_Height=842;
    $Top_Margin=20;
    $Bottom_Margin=20;
    $Left_Margin=25;
    $Right_Margin=22;

    $PageSize = array(0,0,$Page_Width,$Page_Height);
    $pdf = new Cpdf($PageSize);

    $pdf->selectFont('./fonts/Helvetica.afm');

/* Standard PDF file creation header stuff */
   
    $pdf->addinfo('Title', _('Payslip Report') );
    $pdf->addinfo('Subject', _('Payslip Report') );

    //(612,792);
    $PageNumber=1;
    $line_height=12;
    

    
    $PayDesc = GetPayrollRow($PayrollID, $db,1);
    $FromPeriod = GetPayrollRow($PayrollID, $db,3);
    $ToPeriod = GetPayrollRow($PayrollID, $db,4);
    $FontSize = 10;
    $pdf->addinfo('Title', _('Payroll Register') );
    $pdf->addinfo('Subject', _('Payroll Register') );
    $line_height = 12;
            $EmpID ='';
            $Basic = 0;
            $OthInc = 0;
            $Lates = 0;
            $Absent = 0;
            $Areas=0;
            $OT = 0;
            $Gross = 0;
            $SSS = 0;
            $HDMF ='';
            $PhilHealt = 0;
            $Loan = 0;
            $Tax = 0;
            $Net = 0;
            

    $YPos = $Page_Height - $Top_Margin;
    $YPos -= (2 * $line_height);

    $PaySlip=1;
$empid=$employee->employeeid;
      $sql = "SELECT employeeid,basicpay,othincome,fee,absent,areaspay,late,otpay,grosspay,loandeduction,otherdeduction,totaldeduction,sss,hdmf,philhealth,tax,netpay
            FROM prlpayrolltrans
            WHERE employeeid='".$empid."' AND prlpayrolltrans.payrollid='".$PayrollID. "'";
            
            if(empty($empid))
            $sql = "SELECT employeeid,basicpay,othincome,fee,absent,areaspay,late,otpay,grosspay,loandeduction,otherdeduction,totaldeduction,sss,hdmf,philhealth,tax,netpay
            FROM prlpayrolltrans
            WHERE prlpayrolltrans.payrollid='".$PayrollID. "'"; 
            

             $PayResult = DB_query($sql,$db);
    if(DB_num_rows($PayResult)>0)
    {
        while ($myrow=DB_fetch_array($PayResult)) {
        
                $EmpID =$myrow['employeeid'];
                $FullName=GetName($EmpID, $db);
                
                $Basic =$myrow['basicpay'];
                $OthInc = $myrow['othincome'];
                $OtherDeduction=$myrow['otherdeduction'];
                $Areas = $myrow['areaspay'];
                $Absent = $myrow['absent'];
                $OT =$myrow['otpay'];
                $Gross =$myrow['grosspay'];
                $SSS =$myrow['sss'];
                $HDMF =$myrow['hdmf'];
                $PhilHealth = $myrow['philhealth'];
                $Loan =$myrow['loandeduction'];
                $Tax = $myrow['tax'];
                $Fee = $myrow['fee'];
                $Net =$myrow['netpay'];
                $Deduction=$myrow['totaldeduction'];
                
                
                
            if ($PaySlip==1) {
                $FontSize =10;
                $pdf->selectFont('./fonts/Helvetica-Bold.afm');
                $HeadPos1= $YPos;               
                $LeftOvers =$pdf->addText($Left_Margin,$YPos,$FontSize,$_SESSION['CompanyRecord']['coyname']);
                $YPos -= (1 * $line_height);
                $FontSize =10;
                $pdf->selectFont('./fonts/Helvetica-Bold.afm');
                $FullName = _('Name : ') . $FullName;
                $pdf->Image("includes/logo/logo.JPG",$Left_Margin+177,$YPos-227,50);
                //$pdf->Image("includes/logo/logo.JPG",216,42,50);
                $LeftOvers =$pdf->addText($Left_Margin, $YPos, $FontSize, $FullName);
                $FontSize = 8;
                $YPos -= (1 * $line_height);    
                $LeftOvers =$pdf->addText($Left_Margin, $YPos, $FontSize, $PayDesc);
                $YPos -= (1 * $line_height);    
                $Heading2 = _('Period from ') . $FromPeriod .' to ' .$ToPeriod;
                $LeftOvers =$pdf->addText($Left_Margin,$YPos,$FontSize,$Heading2);
                $YPos -=25;
                /*Draw a rectangle to put the headings in     */
                $BoxHeight =20;
                //$pdf->line($Left_Margin, $YPos+$BoxHeight,$Page_Width-$Right_Margin, $YPos+$BoxHeight); //top vertical
                $pdf->line($Left_Margin, $YPos+$BoxHeight,262, $YPos+$BoxHeight); //top vertical
                $pdf->line($Left_Margin, $YPos+$BoxHeight,$Left_Margin, $YPos);
                $pdf->line($Left_Margin, $YPos,262, $YPos); //bottom vertical
                $pdf->line(262, $YPos+$BoxHeight,262, $YPos);  //right horizontal
                $YPos +=5;
                /*set up the headings */
                $FontSize = 10;
                $LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,65,$FontSize,'Income','right');
                $LeftOvers = $pdf->addTextWrap(155,$YPos,65,$FontSize,'Deduction','right');
                $YPos -= (2 * $line_height);
                //$YPos -= (2 * $line_height);  //double spacing
                $OldYPos1= $YPos;
                $FontSize = 8;
                $pdf->selectFont('./fonts/Helvetica.afm');
                $LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,55,$FontSize,'Basic : ','right');
                $LeftOvers = $pdf->addTextWrap(110,$YPos,40,$FontSize,number_format($Basic,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,55,$FontSize,'Other Income : ','right');
                $LeftOvers = $pdf->addTextWrap(110,$YPos,40,$FontSize,number_format($OthInc,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,55,$FontSize,'','right');
                $LeftOvers = $pdf->addTextWrap(110,$YPos,40,$FontSize,'','right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,55,$FontSize,' ','right');
                $LeftOvers = $pdf->addTextWrap(110,$YPos,40,$FontSize,'','right');          
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap($Left_Margin,$YPos,55,$FontSize,' ','right');
                $LeftOvers = $pdf->addTextWrap(110,$YPos,40,$FontSize,'','right');
                $YPos -= $line_height;
            
                //2nd column
                $OldYPos2=$OldYPos1;
                $YPos=$OldYPos1;
                $FontSize = 8;
                $pdf->selectFont('./fonts/Helvetica.afm');
                $LeftOvers = $pdf->addTextWrap(155,$YPos,65,$FontSize,'LAPF : ','right');
                $LeftOvers = $pdf->addTextWrap(221,$YPos,40,$FontSize,number_format($SSS,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(155,$YPos,65,$FontSize,' P.A.Y.E:','right');
                $LeftOvers = $pdf->addTextWrap(221,$YPos,40,$FontSize,number_format($Tax,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(155,$YPos,65,$FontSize,'National Health: ','right');
                $LeftOvers = $pdf->addTextWrap(221,$YPos,40,$FontSize,number_format($PhilHealth,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(155,$YPos,65,$FontSize,'Other Deductions: ','right');
                $LeftOvers = $pdf->addTextWrap(221,$YPos,40,$FontSize,number_format($OtherDeduction,2),'right');            
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(155,$YPos,65,$FontSize,'Advance Salary: ','right');
                $LeftOvers = $pdf->addTextWrap(221,$YPos,40,$FontSize,number_format($Loan,2),'right');
                $YPos -=25;
                /*Draw a rectangle to put the headings in     */
                $BoxHeight =20;
                //$pdf->line($Left_Margin, $YPos+$BoxHeight,$Page_Width-$Right_Margin, $YPos+$BoxHeight); //top vertical
                $pdf->line($Left_Margin, $YPos+$BoxHeight,262, $YPos+$BoxHeight); //top vertical
                $pdf->line($Left_Margin, $YPos+$BoxHeight,$Left_Margin, $YPos);
                $pdf->line($Left_Margin, $YPos,262, $YPos); //bottom vertical
                $pdf->line(262, $YPos+$BoxHeight,262, $YPos);  //right horizontal
                $YPos +=5;
                /*set up the headings */
                $Xpos = $Left_Margin+1;
                $LeftOvers = $pdf->addTextWrap($Xpos,$YPos,65,$FontSize,'Gross Income : ','right');
                $LeftOvers = $pdf->addTextWrap(110,$YPos,40,$FontSize,number_format($Gross,2),'right');
                $LeftOvers = $pdf->addTextWrap(155,$YPos,65,$FontSize,'Total Deduction : ','right');
                $LeftOvers = $pdf->addTextWrap(221,$YPos,40,$FontSize,number_format($Deduction,2),'right');     

                $YPos -=50;
                /*Draw a rectangle to put the headings in     */
                $BoxHeight =45;
                //$pdf->line($Left_Margin, $YPos+$BoxHeight,262, $YPos+$BoxHeight); //top vertical
                $pdf->line($Left_Margin, $YPos+$BoxHeight,$Left_Margin, $YPos);
                $pdf->line($Left_Margin, $YPos,262, $YPos); //bottom vertical
                $pdf->line(262, $YPos+$BoxHeight,262, $YPos);  //right horizontal
                $YPos +=5;
                /*set up the headings */
                $Xpos = $Left_Margin+1;
                $LeftOvers = $pdf->addTextWrap($Xpos,$YPos,100,$FontSize,'','right');
                
                $LeftOvers = $pdf->addTextWrap(150,$YPos,65,$FontSize,'Net Pay : ','right');
                $LeftOvers = $pdf->addTextWrap(216,$YPos,40,$FontSize,number_format($Net,2),'right');       
                $YPos -= $line_height;

                $PaySlip=2;
            } elseif ($PaySlip==2) {
                //header        
                $FontSize =10;
                $pdf->selectFont('./fonts/Helvetica-Bold.afm');
                $YPos = $HeadPos1;  
                $LeftOvers =$pdf->addText(322,$YPos,$FontSize,$_SESSION['CompanyRecord']['coyname']);
                $YPos -= (1 * $line_height);    
                $FontSize =10;
                $pdf->selectFont('./fonts/Helvetica-Bold.afm');
                $FullName = _('Name : ') . $FullName;
                 //$pdf->Image("includes/logo/logo.JPG",500,42,50);
                $pdf->Image("includes/logo/logo.JPG",$Left_Margin+460,$YPos-227,50);
                $LeftOvers =$pdf->addText(322, $YPos, $FontSize, $FullName);
                $FontSize = 8;
                $YPos -= (1 * $line_height);    
                $LeftOvers =$pdf->addText(322, $YPos, $FontSize, $PayDesc);
                $YPos -= (1 * $line_height);    
                $Heading2 = _('Period from ') . $FromPeriod .' to ' .$ToPeriod;
                $LeftOvers =$pdf->addText(322,$YPos,$FontSize,$Heading2);
                $YPos -=25;
                /*Draw a rectangle to put the headings in     */
                $BoxHeight =20;
                $pdf->line(321, $YPos+$BoxHeight,539, $YPos+$BoxHeight); //top vertical
                $pdf->line(321, $YPos+$BoxHeight,321, $YPos); //left horizontal
                $pdf->line(321, $YPos,539, $YPos); //bottom vertical
                $pdf->line(539, $YPos+$BoxHeight,539, $YPos);  //right horizontal
                $YPos +=5;  
                /*set up the headings */
                $FontSize = 10;
                $LeftOvers = $pdf->addTextWrap(322,$YPos,65,$FontSize,'Income','right');
                $LeftOvers = $pdf->addTextWrap(423,$YPos,65,$FontSize,'Deduction','right');
                $YPos -= (2 * $line_height);
                
                //$YPos -= (2 * $line_height);  //double spacing
                $YPos=$OldYPos1;
                $FontSize = 8;
                $pdf->selectFont('./fonts/Helvetica.afm');
                $LeftOvers = $pdf->addTextWrap(322,$YPos,65,$FontSize,'Basic : ','right');
                $LeftOvers = $pdf->addTextWrap(387,$YPos,40,$FontSize,number_format($Basic,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(322,$YPos,65,$FontSize,'Other Income: ','right');
                $LeftOvers = $pdf->addTextWrap(387,$YPos,40,$FontSize,number_format($OthInc,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(322,$YPos,65,$FontSize,' ','right');
                $LeftOvers = $pdf->addTextWrap(387,$YPos,40,$FontSize,'','right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(322,$YPos,65,$FontSize,' ','right');
                $LeftOvers = $pdf->addTextWrap(387,$YPos,40,$FontSize,'','right');          
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(322,$YPos,65,$FontSize,' ','right');
                $LeftOvers = $pdf->addTextWrap(387,$YPos,40,$FontSize,'','right');
                $YPos -= $line_height;
            
                //2nd column
                $YPos=$OldYPos2;
                $FontSize = 8;
                $pdf->selectFont('./fonts/Helvetica.afm');
                $LeftOvers = $pdf->addTextWrap(432,$YPos,65,$FontSize,'LAPF : ','right');
                $LeftOvers = $pdf->addTextWrap(498,$YPos,40,$FontSize,number_format($SSS,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(432,$YPos,65,$FontSize,'P.A.Y.E : ','right');
                $LeftOvers = $pdf->addTextWrap(498,$YPos,40,$FontSize,number_format($Tax,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(432,$YPos,65,$FontSize,'National Health: ','right');
                $LeftOvers = $pdf->addTextWrap(498,$YPos,40,$FontSize,number_format($PhilHealth,2),'right');
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(432,$YPos,65,$FontSize,'Other Deduction : ','right');
                $LeftOvers = $pdf->addTextWrap(498,$YPos,40,$FontSize,number_format($OtherDeduction,2),'right');            
                $YPos -= $line_height;
                $LeftOvers = $pdf->addTextWrap(432,$YPos,65,$FontSize,'Advance Salary : ','right');
                $LeftOvers = $pdf->addTextWrap(498,$YPos,40,$FontSize,number_format($Loan,2),'right');
                $YPos -=25;
                /*Draw a rectangle to put the headings in     */
                $BoxHeight =20;
                $pdf->line(321, $YPos+$BoxHeight,539, $YPos+$BoxHeight); //top vertical
                $pdf->line(321, $YPos+$BoxHeight,321, $YPos); //left horizontal
                $pdf->line(321, $YPos,539, $YPos); //bottom vertical
                $pdf->line(539, $YPos+$BoxHeight,539, $YPos);  //right horizontal
                $YPos +=5;
                /*set up the headings */
                $LeftOvers = $pdf->addTextWrap(322,$YPos,65,$FontSize,'Gross Income : ','right');
                $LeftOvers = $pdf->addTextWrap(387,$YPos,40,$FontSize,number_format($Gross,2),'right');
                $LeftOvers = $pdf->addTextWrap(432,$YPos,65,$FontSize,'Total Deduction : ','right');
                $LeftOvers = $pdf->addTextWrap(498,$YPos,40,$FontSize,number_format($Deduction,2),'right');     
                $YPos -=50;
                /*Draw a rectangle to put the headings in     */
                $BoxHeight =45;
                $pdf->line(321, $YPos+$BoxHeight,321, $YPos);
                $pdf->line(321, $YPos,539, $YPos); //bottom vertical
                $pdf->line(539, $YPos+$BoxHeight,539, $YPos);  //right horizontal
                $YPos +=5;
                /*set up the headings */
                $LeftOvers = $pdf->addTextWrap(322,$YPos,100,$FontSize,'','right');
                
                $LeftOvers = $pdf->addTextWrap(432,$YPos,65,$FontSize,'Net Pay : ','right');
                $LeftOvers = $pdf->addTextWrap(498,$YPos,40,$FontSize,number_format($Net,2),'right');       
                $YPos -= $line_height;
                $YPos -= (5 * $line_height);
                
                $PaySlip=1;
            }
            
            
                
            
            
            if ($YPos < ($Bottom_Margin)){      
                $PageNumber++;
                if ($PageNumber>1){
                    $pdf->newPage();
                    $YPos = $Page_Height - $Top_Margin;
                    $YPos -= (2 * $line_height);
                }
            }
        }
        
    }//end of loop

    
    $pdfcode = $pdf->output();
    $len = strlen($pdfcode);
    if ($len<=20){
        $title = _('Payroll Register Error');
        include('includes/header.inc');
        echo '<p>';
        prnMsg( _('There were no entries to print out for the selections specified') );
        echo '<BR><A HREF="'. $rootpath.'/index.php?' . SID . '">'. _('Back to the menu'). '</A>';
        include('includes/footer.inc');
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


} /*end of else not PrintPDF */

?>