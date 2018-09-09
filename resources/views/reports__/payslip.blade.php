<?php
$db="medahr";
$dbuser="root";
$dbpassword="";
    $PayrollID=$payrollperiod->id;
    $comp="Demmo Company";
    $servername="localhost";
    include('includes/config.php');
    //include('includes/PDFStarter.php');
    include('includes/ConnectDB.inc');
    include('includes/ConnectDB_mysql.inc');
    include('includes/prlFunctions.php');

     include('includes/fpdf/fpdf.php');
    
    // le mettre au debut car plante si on declare $mysql avant !
    $pdf = new FPDF( 'P', 'mm', 'A4' );

    // on declare $mysql apres !
    //$mysql = new mysql("localhost", $dbuser, $dbpassword,"medahr");
   //$mysql =  mysql_connect($servername, $dbuser, $password,$db);
    // cnx a la base
   // mysql_select_db($db,$mysql) or die('Error Conecting database : ' .mysql_connect_error());
    // FORCE UTF-8
//    mysql_query($mysql, "SET NAMES UTF8");


    $var_id_facture = 1;
    //$PayrollID=$_POST['PayrollID'];

    // on sup les 2 cm en bas
    $pdf->SetAutoPagebreak(False);
    $pdf->SetMargins(0,0,0);

    // nb de page pour le multi-page : 18 lignes
   // $sql = 'select count(*) FROM  prlpayrolltrans where  employeeid=' .$var_id_facture;
     $sql = "select employeeid,basicpay,grosspay FROM  prlpayrolltrans where  employeeid='" .$var_id_facture."' AND payrollid='".$PayrollID."'";
    $result = mysql_query($sql)  or die ('Error SQL : ' .$sql .mysql_connect_error() );
    $row_client = mysql_fetch_row($result);
    mysql_free_result($result);
    $nb_page = 1;
    $sql = 'select abs(FLOOR(-' . $nb_page . '/18))';
    $result = mysql_query($sql)  or die ('Error SQL : ' .$sql .mysql_connect_error() );
    $row_client_1 = mysql_fetch_row($result);
    mysql_free_result($result);
    $nb_page = 1;

    $num_page = 1; $limit_inf = 0; $limit_sup = 18;
    While ($num_page <= $nb_page)
    {
        $pdf->AddPage();
        
        // logo : 80 de largeur et 55 de hauteur
        //$pdf->Image("companies/".$db."/".logo($db)."", 10, 10, 80, 55);
        $pdf->Image("includes/logo/logo.JPG", 10, 10, 80, 55);


        // n° page en haute à droite
        $pdf->SetXY( 120, 5 ); $pdf->SetFont( "Arial", "B", 12 ); $pdf->Cell( 160, 8, $num_page . '/' . $nb_page, 0, 0, 'C');
        
        // n° facture, date echeance et reglement et obs
        $select = "select employeeid,pencode,payrollid,basicpay,grosspay,madeat from prlpayrolltrans where employeeid='" .$var_id_facture."' AND payrollid='".$PayrollID."'";
        $result = mysql_query($select)  or die ('Erreur SQL : ' .$select .mysql_connect_error() );
        $row = mysql_fetch_array($result);
        mysql_free_result($result);
        
        $champ_date = date_create($row['madeat']); $annee = date_format($champ_date, 'Y');
        $num_fact = "Payslip for " . str_pad($PayrollID, 4, '0', STR_PAD_LEFT);
        $pdf->SetLineWidth(0.1); $pdf->SetFillColor(192); $pdf->Rect(120, 15, 85, 8, "DF");
        $pdf->SetXY( 120, 15 ); $pdf->SetFont( "Arial", "B", 12 ); $pdf->Cell( 85, 8, $num_fact, 0, 0, 'C');
        
        // nom du fichier final
        $nom_file = "fact_" . $annee .'-' . str_pad($row[1], 4, '0', STR_PAD_LEFT) . ".pdf";
        
        // date facture
        $champ_date = date_create($row['madeat']); $date_fact = date_format($champ_date, 'd/m/Y');
        $pdf->SetFont('Arial','',11); $pdf->SetXY( 122, 30 ); 
       // $pdf->Cell( 60, 8, "Name" . $date_fact, 0, 0, '');

        
      
        // observations
       // $pdf->SetFont( "Arial", "BU", 10 ); $pdf->SetXY( 5, 75 ) ; $pdf->Cell($pdf->GetStringWidth("Observations"), 0, "Observations", 0, "L");
        $pdf->SetFont( "Arial", "", 10 ); $pdf->SetXY( 5, 78 ) ; $pdf->MultiCell(190, 4, $row[5], 0, "L");

        // adr fact du client
        $select = "select employeeid,firstname,lastname,middlename,position,pencode,ssnumber,periodrate,atmnumber,bankid  from prlemployeemaster where employeeid='" .$var_id_facture."'";
        $result = mysql_query($select)  or die ('Erreur SQL : ' .$select .mysql_connect_error() );
        $row_client = mysql_fetch_array($result);
        mysql_free_result($result);
        
        $pdf->SetFont('Arial','B',11); $x = 100; $y = 50;
        $pdf->SetXY( $x, $y ); $pdf->Cell( 100, 8,"Company Detail: ". $comp, 0, 0, ''); $y += 4;
        if ($row_client[1]) { $pdf->SetXY( $x, $y ); $pdf->Cell( 100, 8,"Emp Name :". $row_client["firstname"]." ".$row_client["middlename"]." ".$row_client["lastname"], 0, 0, ''); $y += 4;}
        if ($row_client[2]) { $pdf->SetXY( $x, $y ); $pdf->Cell( 100, 8,"Allocation : ".$row_client['position'], 0, 0, ''); $y += 4;}
        if ($row_client[3]) { $pdf->SetXY( $x, $y ); $pdf->Cell( 100, 8, "Membership :".$row_client['pencode']."->".$row_client['ssnumber'], 0, 0, ''); $y += 4;}
         if ($row_client[3]) { $pdf->SetXY( $x, $y ); $pdf->Cell( 100, 8, "Bank Detail :".$row_client['bankid']."->".$row_client['atmnumber'], 0, 0, ''); $y += 4;}
        //if ($row_client[4] || $row_client[5]) { $pdf->SetXY( $x, $y ); $pdf->Cell( 100, 8, $row_client[4] . ' ' .$row_client[5] , 0, 0, ''); $y += 4;}
       // if ($row_client[3]) { $pdf->SetXY( $x, $y ); $pdf->Cell( 100, 8, 'N° TVA Intra : ' . $row_client[2], 0, 0, '');}
        
        // ***********************
        // le cadre des articles
        // ***********************
        // cadre avec 18 lignes max ! et 118 de hauteur --> 95 + 118 = 213 pour les traits verticaux
        $pdf->SetLineWidth(0.1); $pdf->Rect(5, 95, 200, 118, "D");
        // cadre titre des colonnes
       // $pdf->Line(5, 105, 205, 105);
        // les traits verticaux colonnes
       // $pdf->Line(145, 95, 145, 213); 
       // $pdf->Line(158, 95, 158, 213); 
        //$pdf->Line(176, 95, 176, 213); $pdf->Line(187, 95, 187, 213);
        // titre colonne
         $y = 97;
        $pdf->SetXY( 1, 96 ); $pdf->SetFont('Arial','B',12); $pdf->Cell( 140, 8, "Income", 0, 0, 'C');
        $pdf->SetXY( 145, 96 ); $pdf->SetFont('Arial','B',8); $pdf->Cell( 10, 8, "", 0, 0, 'C');
     
         $pdf->Line(5, $y+8, 205, $y+8);
        // les articles
        $pdf->SetFont('Arial','',8);
       
        // 1ere page = LIMIT 0,18 ;  2eme page = LIMIT 18,36 etc...

         $sql = "SELECT payrollid,counterindex,employeeid,othincid,sum(amount) as amount,othincdesc FROM prlothericometrans
                 LEFT JOIN prlothinctable ON (prlothericometrans.otherincid=prlothinctable.othincid)
                 WHERE employeeid='" .$var_id_facture." ' and payrollid='". $PayrollID."'

                 GROUP BY othincid 
                 ORDER BY  othincid";
       // $sql = "select employeeid,payrollid,otherincid,amount from prlothericometrans where employeeid='" .$var_id_facture." ' and payrollid='". $PayrollID."' order by employeeid";
        $sql .= ' LIMIT ' . $limit_inf . ',' . $limit_sup;
        $res = mysql_query($sql)  or die ('Erreur SQL : ' .$sql .mysql_connect_error() );

           $pdf->SetXY( 7, $y+9 ); $pdf->Cell( 140, 5, "Basic Pay", 0, 0, 'L');
            // qte
            $pdf->SetXY( 145, $y+9 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev(GetPayrollTransRow($PayrollID,$row_client['employeeid'] ,$db)), 3, ' ', true)), 0, 0, 'R');

             $pdf->Line(5, $y+14, 205, $y+14);
            // PU
        $y = 103;
        while ($data =  mysql_fetch_assoc($res))
        {
            // libelle
            $pdf->SetXY( 7, $y+9 ); $pdf->Cell( 140, 5, $data['othincdesc'], 0, 0, 'L');
            // qte
            $pdf->SetXY( 145, $y+9 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev($data['amount']), 3, ' ', true)), 0, 0, 'R');
            // PU
        
            
            $pdf->Line(5, $y+14, 205, $y+14);
            
            $y += 6;
        }
        mysql_free_result($res);
            $pdf->SetXY( 7, $y+9 ); $pdf->Cell( 140, 5, "Gross Pay", 0, 0, 'L');
            // qte
            $pdf->SetXY( 145, $y+9 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev(BasicPay($PayrollID,$row_client['employeeid'] ,$db)), 3, ' ', true)), 0, 0, 'R');

             $pdf->Line(5, $y+14, 205, $y+14);

              $pdf->SetXY( 7, $y+15 ); $pdf->SetFont('Arial','B',12);  $pdf->Cell( 140, 5, "Deductions", 0, 0, 'C');
            // qte
             $pdf->SetFont('Arial','',8); 

             $pdf->Line(5, $y+20, 205, $y+20);

        //dedu
             $y+=12;


              $sql_d = "SELECT payrollid,counterindex,employeeid,othincid,sum(amount) as amount,othincdesc FROM prlotherdeductrans
                 LEFT JOIN prlothdedtable ON (prlotherdeductrans.otherincid=prlothdedtable.othincid)
                 WHERE employeeid='" .$var_id_facture." ' and payrollid='". $PayrollID."' 

                 GROUP BY othincid 
                 ORDER BY  othincid";

             // $sql_d = "select employeeid,payrollid,otherincid,amount from prlotherdeductrans where employeeid='" .$var_id_facture." ' and payrollid='". $PayrollID."' order by employeeid";
        $sql_d .= ' LIMIT ' . $limit_inf . ',' . $limit_sup;
        $res_d = mysql_query($sql_d)  or die ('Erreur SQL : ' .$sql .mysql_connect_error() );

          $pdf->SetXY( 7, $y+9 ); $pdf->Cell( 140, 5, "P.A.Y.E", 0, 0, 'L');
            // qte
            $pdf->SetXY( 145, $y+9 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev((PayrollTransRow($PayrollID,$row_client['employeeid'] ,$db,"TAX"))), 3, ' ', true)), 0, 0, 'R');
            // PU
       
            
            $pdf->Line(5, $y+14, 205, $y+14);



             $pdf->SetXY( 7, $y+14 ); $pdf->Cell( 140, 5, PayrollTransRow($PayrollID,$row_client['employeeid'] ,$db,"PENCODE")."->Employee Contribution", 0, 0, 'L');
            // qte
            $pdf->SetXY( 145, $y+14 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev((PayrollTransRow($PayrollID,$row_client['employeeid'] ,$db,"SSS"))), 3, ' ', true)), 0, 0, 'R');
            // PU
            $pdf->Line(5, $y+20, 205, $y+20);
           $pdf->SetXY( 7, $y+20 ); $pdf->Cell( 140, 5, "NHIF", 0, 0, 'L');
            // qte
            $pdf->SetXY( 145, $y+20 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev((PayrollTransRow($PayrollID,$row_client['employeeid'] ,$db,"NHIF"))), 3, ' ', true)), 0, 0, 'R');
            
            $pdf->Line(5, $y+26, 205, $y+26);
            $y+=6;
         while ($data_d =  mysql_fetch_assoc($res_d))
        {
            // libelle
            $pdf->SetXY( 7, $y+21 ); $pdf->Cell( 140, 5, $data_d['othincdesc'], 0, 0, 'L');
            // qte
            $pdf->SetXY( 145, $y+21 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev($data_d['amount']), 3, ' ', true)), 0, 0, 'R');
            // PU
        
            
            $pdf->Line(5, $y+25, 205, $y+25);
            
            $y += 6;
        }
        mysql_free_result($res_d);

        
       $sql_l= "SELECT payrollid,counterindex,employeeid,prlloandeduction.loantableid as loantableid,sum(amount) as amount,loantabledesc FROM prlloandeduction
                 LEFT JOIN prlloantable ON (prlloandeduction.loantableid=prlloantable.loantableid)
                 WHERE employeeid='" .$var_id_facture." ' and  payrollid='". $PayrollID."'

                 GROUP BY loantableid  
                 ORDER BY  loantableid ";

         //$sql_l = "select employeeid,payrollid,loantableid,amount from prlloandeduction where employeeid='" .$var_id_facture." ' and  payrollid='". $PayrollID."' order by employeeid";
        $sql_l .= ' LIMIT ' . $limit_inf . ',' . $limit_sup;
        $res_l = mysql_query($sql_l)  or die ('Erreur SQL : ' .$sql .mysql_connect_error() );
  

         while ($data_l =  mysql_fetch_assoc($res_l))
        {
            // libelle
            $pdf->SetXY( 7, $y+21 ); $pdf->Cell( 140, 5, $data_l['loantabledesc'], 0, 0, 'L');
            // qte
            $pdf->SetXY( 145, $y+21 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev($data_l['amount']), 3, ' ', true)), 0, 0, 'R');
            // PU
        
            
            $pdf->Line(5, $y+25, 205, $y+25);
            
            $y += 6;
        }
        mysql_free_result($res_l);

            $pdf->SetXY( 7, $y+21 ); $pdf->Cell( 140, 5, "Total Deduction", 0, 0, 'L');
            // qte
            $pdf->SetXY( 145, $y+21 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev((PayrollTransRow($PayrollID,$row_client['employeeid'] ,$db,"TOTALDEDUCTION"))), 3, ' ', true)), 0, 0, 'R');

            $pdf->Line(5, $y+26, 205, $y+26);

            
             $pdf->SetFont('Arial','B',12); 

            $pdf->SetXY( 7, $y+30 ); $pdf->Cell( 140, 5, "NET PAY", 0, 0, 'C');
            // qte
            $pdf->SetXY( 145, $y+30 ); $pdf->Cell( 13, 5, strrev(wordwrap(strrev((PayrollTransRow($PayrollID,$row_client['employeeid'] ,$db,"NETPAY"))), 3, ' ', true)), 0, 0, 'C');

            $pdf->Line(5, $y+36, 205, $y+36);
     
        $num_page++; $limit_inf += 18; $limit_sup += 18; 
    }
    
    $pdf->Output("I", $nom_file);
?>