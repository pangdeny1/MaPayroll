<?php
echo "..";
$period=22;
header('Content-Type: application/vnd.ms-excel');
header("Content-Disposition: attachment; filename=\"Payroll -".$period.".xls\"");

        ?>
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta name="Excel Workbook Frameset">
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 15">
<link rel="stylesheet" type="text/css" id="theme" href="includes/slip_files/stylesheet.css"/>
<link rel=File-List href="includes/slip_files/filelist.xml">
<title>Salary Slip</title>
<![if !supportTabStrip]>
<link id="shLink" href="includes/slip_files/sheet001.htm">
<link id="shLink" href="includes/slip_files/sheet002.htm">
<link id="shLink" href="includes/slip_files/sheet003.htm">

<link id="shLink">

<script language="JavaScript">
<!--
 var c_lTabs=3;

 var c_rgszSh=new Array(c_lTabs);
 c_rgszSh[0] = "Sheet1";
 c_rgszSh[1] = "Sheet2";
 c_rgszSh[2] = "Sheet3";



 var c_rgszClr=new Array(8);
 c_rgszClr[0]="window";
 c_rgszClr[1]="buttonface";
 c_rgszClr[2]="windowframe";
 c_rgszClr[3]="windowtext";
 c_rgszClr[4]="threedlightshadow";
 c_rgszClr[5]="threedhighlight";
 c_rgszClr[6]="threeddarkshadow";
 c_rgszClr[7]="threedshadow";

 var g_iShCur;
 var g_rglTabX=new Array(c_lTabs);

function fnGetIEVer()
{
 var ua=window.navigator.userAgent
 var msie=ua.indexOf("MSIE")
 if (msie>0 && window.navigator.platform=="Win32")
  return parseInt(ua.substring(msie+5,ua.indexOf(".", msie)));
 else
  return 0;
}

function fnBuildFrameset()
{
 var szHTML="<frameset rows=\"*,18\" border=0 width=0 frameborder=no framespacing=0>"+
  "<frame src=\""+document.all.item("shLink")[0].href+"\" name=\"frSheet\" noresize>"+
  "<frameset cols=\"54,*\" border=0 width=0 frameborder=no framespacing=0>"+
  "<frame src=\"\" name=\"frScroll\" marginwidth=0 marginheight=0 scrolling=no>"+
  "<frame src=\"\" name=\"frTabs\" marginwidth=0 marginheight=0 scrolling=no>"+
  "</frameset></frameset><plaintext>";

 with (document) {
  open("text/html","replace");
  write(szHTML);
  close();
 }

 fnBuildTabStrip();
}

function fnBuildTabStrip()
{
 var szHTML=
  "<html><head><style>.clScroll {font:8pt Courier New;color:"+c_rgszClr[6]+";cursor:default;line-height:10pt;}"+
  ".clScroll2 {font:10pt Arial;color:"+c_rgszClr[6]+";cursor:default;line-height:11pt;}</style></head>"+
  "<body onclick=\"event.returnValue=false;\" ondragstart=\"event.returnValue=false;\" onselectstart=\"event.returnValue=false;\" bgcolor="+c_rgszClr[4]+" topmargin=0 leftmargin=0><table cellpadding=0 cellspacing=0 width=100%>"+
  "<tr><td colspan=6 height=1 bgcolor="+c_rgszClr[2]+"></td></tr>"+
  "<tr><td style=\"font:1pt\">&nbsp;<td>"+
  "<td valign=top id=tdScroll class=\"clScroll\" onclick=\"parent.fnFastScrollTabs(0);\" onmouseover=\"parent.fnMouseOverScroll(0);\" onmouseout=\"parent.fnMouseOutScroll(0);\"><a>&#171;</a></td>"+
  "<td valign=top id=tdScroll class=\"clScroll2\" onclick=\"parent.fnScrollTabs(0);\" ondblclick=\"parent.fnScrollTabs(0);\" onmouseover=\"parent.fnMouseOverScroll(1);\" onmouseout=\"parent.fnMouseOutScroll(1);\"><a>&lt</a></td>"+
  "<td valign=top id=tdScroll class=\"clScroll2\" onclick=\"parent.fnScrollTabs(1);\" ondblclick=\"parent.fnScrollTabs(1);\" onmouseover=\"parent.fnMouseOverScroll(2);\" onmouseout=\"parent.fnMouseOutScroll(2);\"><a>&gt</a></td>"+
  "<td valign=top id=tdScroll class=\"clScroll\" onclick=\"parent.fnFastScrollTabs(1);\" onmouseover=\"parent.fnMouseOverScroll(3);\" onmouseout=\"parent.fnMouseOutScroll(3);\"><a>&#187;</a></td>"+
  "<td style=\"font:1pt\">&nbsp;<td></tr></table></body></html>";

 with (frames['frScroll'].document) {
  open("text/html","replace");
  write(szHTML);
  close();
 }

 szHTML =
  "<html><head>"+
  "<style>A:link,A:visited,A:active {text-decoration:none;"+"color:"+c_rgszClr[3]+";}"+
  ".clTab {cursor:hand;background:"+c_rgszClr[1]+";font:9pt Arial;padding-left:3px;padding-right:3px;text-align:center;}"+
  ".clBorder {background:"+c_rgszClr[2]+";font:1pt;}"+
  "</style></head><body onload=\"parent.fnInit();\" onselectstart=\"event.returnValue=false;\" ondragstart=\"event.returnValue=false;\" bgcolor="+c_rgszClr[4]+
  " topmargin=0 leftmargin=0><table id=tbTabs cellpadding=0 cellspacing=0>";

 var iCellCount=(c_lTabs+1)*2;

 var i;
 for (i=0;i<iCellCount;i+=2)
  szHTML+="<col width=1><col>";

 var iRow;
 for (iRow=0;iRow<6;iRow++) {

  szHTML+="<tr>";

  if (iRow==5)
   szHTML+="<td colspan="+iCellCount+"></td>";
  else {
   if (iRow==0) {
    for(i=0;i<iCellCount;i++)
     szHTML+="<td height=1 class=\"clBorder\"></td>";
   } else if (iRow==1) {
    for(i=0;i<c_lTabs;i++) {
     szHTML+="<td height=1 nowrap class=\"clBorder\">&nbsp;</td>";
     szHTML+=
      "<td id=tdTab height=1 nowrap class=\"clTab\" onmouseover=\"parent.fnMouseOverTab("+i+");\" onmouseout=\"parent.fnMouseOutTab("+i+");\">"+
      "<a href=\""+document.all.item("shLink")[i].href+"\" target=\"frSheet\" id=aTab>&nbsp;"+c_rgszSh[i]+"&nbsp;</a></td>";
    }
    szHTML+="<td id=tdTab height=1 nowrap class=\"clBorder\"><a id=aTab>&nbsp;</a></td><td width=100%></td>";
   } else if (iRow==2) {
    for (i=0;i<c_lTabs;i++)
     szHTML+="<td height=1></td><td height=1 class=\"clBorder\"></td>";
    szHTML+="<td height=1></td><td height=1></td>";
   } else if (iRow==3) {
    for (i=0;i<iCellCount;i++)
     szHTML+="<td height=1></td>";
   } else if (iRow==4) {
    for (i=0;i<c_lTabs;i++)
     szHTML+="<td height=1 width=1></td><td height=1></td>";
    szHTML+="<td height=1 width=1></td><td></td>";
   }
  }
  szHTML+="</tr>";
 }

 szHTML+="</table></body></html>";
 with (frames['frTabs'].document) {
  open("text/html","replace");
  charset=document.charset;
  write(szHTML);
  close();
 }
}

function fnInit()
{
 g_rglTabX[0]=0;
 var i;
 for (i=1;i<=c_lTabs;i++)
  with (frames['frTabs'].document.all.tbTabs.rows[1].cells[fnTabToCol(i-1)])
   g_rglTabX[i]=offsetLeft+offsetWidth-6;
}

function fnTabToCol(iTab)
{
 return 2*iTab+1;
}

function fnNextTab(fDir)
{
 var iNextTab=-1;
 var i;

 with (frames['frTabs'].document.body) {
  if (fDir==0) {
   if (scrollLeft>0) {
    for (i=0;i<c_lTabs&&g_rglTabX[i]<scrollLeft;i++);
    if (i<c_lTabs)
     iNextTab=i-1;
   }
  } else {
   if (g_rglTabX[c_lTabs]+6>offsetWidth+scrollLeft) {
    for (i=0;i<c_lTabs&&g_rglTabX[i]<=scrollLeft;i++);
    if (i<c_lTabs)
     iNextTab=i;
   }
  }
 }
 return iNextTab;
}

function fnScrollTabs(fDir)
{
 var iNextTab=fnNextTab(fDir);

 if (iNextTab>=0) {
  frames['frTabs'].scroll(g_rglTabX[iNextTab],0);
  return true;
 } else
  return false;
}

function fnFastScrollTabs(fDir)
{
 if (c_lTabs>16)
  frames['frTabs'].scroll(g_rglTabX[fDir?c_lTabs-1:0],0);
 else
  if (fnScrollTabs(fDir)>0) window.setTimeout("fnFastScrollTabs("+fDir+");",5);
}

function fnSetTabProps(iTab,fActive)
{
 var iCol=fnTabToCol(iTab);
 var i;

 if (iTab>=0) {
  with (frames['frTabs'].document.all) {
   with (tbTabs) {
    for (i=0;i<=4;i++) {
     with (rows[i]) {
      if (i==0)
       cells[iCol].style.background=c_rgszClr[fActive?0:2];
      else if (i>0 && i<4) {
       if (fActive) {
        cells[iCol-1].style.background=c_rgszClr[2];
        cells[iCol].style.background=c_rgszClr[0];
        cells[iCol+1].style.background=c_rgszClr[2];
       } else {
        if (i==1) {
         cells[iCol-1].style.background=c_rgszClr[2];
         cells[iCol].style.background=c_rgszClr[1];
         cells[iCol+1].style.background=c_rgszClr[2];
        } else {
         cells[iCol-1].style.background=c_rgszClr[4];
         cells[iCol].style.background=c_rgszClr[(i==2)?2:4];
         cells[iCol+1].style.background=c_rgszClr[4];
        }
       }
      } else
       cells[iCol].style.background=c_rgszClr[fActive?2:4];
     }
    }
   }
   with (aTab[iTab].style) {
    cursor=(fActive?"default":"hand");
    color=c_rgszClr[3];
   }
  }
 }
}

function fnMouseOverScroll(iCtl)
{
 frames['frScroll'].document.all.tdScroll[iCtl].style.color=c_rgszClr[7];
}

function fnMouseOutScroll(iCtl)
{
 frames['frScroll'].document.all.tdScroll[iCtl].style.color=c_rgszClr[6];
}

function fnMouseOverTab(iTab)
{
 if (iTab!=g_iShCur) {
  var iCol=fnTabToCol(iTab);
  with (frames['frTabs'].document.all) {
   tdTab[iTab].style.background=c_rgszClr[5];
  }
 }
}

function fnMouseOutTab(iTab)
{
 if (iTab>=0) {
  var elFrom=frames['frTabs'].event.srcElement;
  var elTo=frames['frTabs'].event.toElement;

  if ((!elTo) ||
   (elFrom.tagName==elTo.tagName) ||
   (elTo.tagName=="A" && elTo.parentElement!=elFrom) ||
   (elFrom.tagName=="A" && elFrom.parentElement!=elTo)) {

   if (iTab!=g_iShCur) {
    with (frames['frTabs'].document.all) {
     tdTab[iTab].style.background=c_rgszClr[1];
    }
   }
  }
 }
}

function fnSetActiveSheet(iSh)
{
 if (iSh!=g_iShCur) {
  fnSetTabProps(g_iShCur,false);
  fnSetTabProps(iSh,true);
  g_iShCur=iSh;
 }
}

 window.g_iIEVer=fnGetIEVer();
 if (window.g_iIEVer>=4)
  fnBuildFrameset();
//-->
</script>
<![endif]><!--[if gte mso 9]><xml>
 <x:ExcelWorkbook>
  <x:ExcelWorksheets>
   <x:ExcelWorksheet>
    <x:Name>Sheet1</x:Name>
    <x:WorksheetSource HRef="slip_files/sheet001.htm"/>
   </x:ExcelWorksheet>
   <x:ExcelWorksheet>
    <x:Name>Sheet2</x:Name>
    <x:WorksheetSource HRef="slip_files/sheet002.htm"/>
   </x:ExcelWorksheet>
   <x:ExcelWorksheet>
    <x:Name>Sheet3</x:Name>
    <x:WorksheetSource HRef="slip_files/sheet003.htm"/>
   </x:ExcelWorksheet>
  </x:ExcelWorksheets>
  <x:Stylesheet HRef="slip_files/stylesheet.css"/>
  <x:WindowHeight>7545</x:WindowHeight>
  <x:WindowWidth>16410</x:WindowWidth>
  <x:WindowTopX>0</x:WindowTopX>
  <x:WindowTopY>0</x:WindowTopY>
  <x:ProtectStructure>False</x:ProtectStructure>
  <x:ProtectWindows>False</x:ProtectWindows>
 </x:ExcelWorkbook>
</xml><![endif]-->
</head>

<frameset rows="*,39" border=0 width=0 frameborder=no framespacing=0>
 <style>
 <body link=blue vlink=purple class=xl86>
<!--table
    {mso-displayed-decimal-separator:"\.";
    mso-displayed-thousand-separator:"\,";}
@page
    {margin:.75in .7in .75in .7in;
    mso-header-margin:.3in;
    mso-footer-margin:.3in;
    mso-page-orientation:landscape;}
-->
</style>
<![if !supportTabStrip]><script language="JavaScript">
<!--
function fnUpdateTabs()
 {
  if (parent.window.g_iIEVer>=4) {
   if (parent.document.readyState=="complete"
    && parent.frames['frTabs'].document.readyState=="complete")
   parent.fnSetActiveSheet(0);
  else
   window.setTimeout("fnUpdateTabs();",150);
 }
}

if (window.name!="frSheet")
 //window.location.replace("../slip.htm");
else
 fnUpdateTabs();
//-->
</script>
<![endif]>
</head>

<body link=blue vlink=purple class=xl86>

<table border=0 cellpadding=0 cellspacing=0 width=783 style='border-collapse:
 collapse;table-layout:fixed;width:588pt'>
 <col class=xl86 width=184 style='mso-width-source:userset;mso-width-alt:6729;
 width:138pt'>
 <col class=xl86 width=176 style='mso-width-source:userset;mso-width-alt:6436;
 width:132pt'>
 <col class=xl86 width=31 style='mso-width-source:userset;mso-width-alt:1133;
 width:23pt'>
 <col class=xl86 width=190 style='mso-width-source:userset;mso-width-alt:6948;
 width:143pt'>
 <col class=xl86 width=202 style='mso-width-source:userset;mso-width-alt:7387;
 width:152pt'>
 <tr height=51 style='mso-height-source:userset;height:38.25pt'>
  <td colspan=5 height=51 width=783 style='height:38.25pt;width:588pt'
  align=left valign=top>
  <![if !vml]><span style='mso-ignore:vglayout;
  position:absolute;z-index:1;margin-left:662px;margin-top:7px;width:121px;
  height:40px'><a href="http://www.dotxes.com/" target="_parent"><img border=0
  width=121 height=40 src=includes/slip_files/image002.png alt=logo.png v:shapes="Picture_x0020_1"></a></span><![endif]><span
  style='mso-ignore:vglayout2'>
  <table cellpadding=0 cellspacing=0>
   <tr>
    <td colspan=5 height=51 class=xl93 width=783 style='height:38.25pt;
    width:588pt'>[COMPANY NAME]</td>
   </tr>
  </table>
  </span></td>
 </tr>
 <tr height=15 style='mso-height-source:userset;height:11.25pt'>
  <td height=15 class=xl81 width=184 style='height:11.25pt;width:138pt'></td>
  <td class=xl81 width=176 style='width:132pt'></td>
  <td class=xl81 width=31 style='width:23pt'></td>
  <td class=xl81 width=190 style='width:143pt'></td>
  <td class=xl89 width=202 style='width:152pt'><a href="http://www.dotxes.com/"
  target="_parent"><span style='color:#0070C0;font-size:8.0pt;text-decoration:
  none'>Salary Slip © Dotxes.com</span></a></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.75pt'>
  <td colspan=2 height=25 class=xl96 width=360 style='height:18.75pt;
  width:270pt'>[Company Address - Web - Email - Contact - Fax]</td>
  <td class=xl82 width=31 style='width:23pt'></td>
  <td colspan=2 class=xl95></td>
 </tr>
 <tr height=10 style='mso-height-source:userset;height:7.5pt'>
  <td colspan=5 height=10 class=xl94 width=783 style='height:7.5pt;width:588pt'></td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.75pt'>
  <td height=25 class=xl77 width=184 style='height:18.75pt;width:138pt'>Employee
  Name:</td>
  <td class=xl66 width=176 style='width:132pt'>[Name]</td>
  <td class=xl65 width=31 style='width:23pt'></td>
  <td class=xl87>Employer Name:</td>
  <td class=xl86>[Name]</td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.75pt'>
  <td height=25 class=xl77 width=184 style='height:18.75pt;width:138pt'>Employee
  Address:</td>
  <td class=xl66 width=176 style='width:132pt'>[Address]</td>
  <td class=xl66 width=31 style='width:23pt'></td>
  <td class=xl87>Salary Date:</td>
  <td class=xl86>[00 . 00 . 0000]</td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.75pt'>
  <td height=25 class=xl77 width=184 style='height:18.75pt;width:138pt'>Employee
  ID:</td>
  <td class=xl66 width=176 style='width:132pt'>***************</td>
  <td class=xl66 width=31 style='width:23pt'></td>
  <td class=xl77 width=190 style='width:143pt'>SSN:</td>
  <td class=xl86>****</td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.75pt'>
  <td height=25 class=xl77 width=184 style='height:18.75pt;width:138pt'>Employee
  Contact:</td>
  <td class=xl66 width=176 style='width:132pt'>***************</td>
  <td class=xl66 width=31 style='width:23pt'></td>
  <td class=xl87>Mode of Payment:</td>
  <td class=xl86>Cash / Check / Bank Deposit</td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl66 width=184 style='height:15.0pt;width:138pt'></td>
  <td class=xl66 width=176 style='width:132pt'></td>
  <td class=xl66 width=31 style='width:23pt'></td>
  <td class=xl66 width=190 style='width:143pt'></td>
  <td class=xl66 width=202 style='width:152pt'></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=2 height=24 class=xl91 width=360 style='height:18.0pt;width:270pt'>Earnings</td>
  <td class=xl66 width=31 style='width:23pt'></td>
  <td colspan=2 class=xl91 width=392 style='width:295pt'>Deductions</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>Regular
  Earnings</td>
  <td class=xl68 width=176 style='width:132pt'>4,000.00</td>
  <td class=xl68 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>Provident Fund</td>
  <td class=xl74 width=202 style='width:152pt'>450.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>Overtime</td>
  <td class=xl68 width=176 style='width:132pt'>800.00</td>
  <td class=xl68 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>Federal Withholding</td>
  <td class=xl74 width=202 style='width:152pt'>80.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>Incentive
  Pay</td>
  <td class=xl68 width=176 style='width:132pt'>300.00</td>
  <td class=xl69 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>Federal MED</td>
  <td class=xl74 width=202 style='width:152pt'>0.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>Bonus</td>
  <td class=xl75 align=right width=176 style='width:132pt'>300.00</td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>Federal OASDI</td>
  <td class=xl74 width=202 style='width:152pt'>0.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>Maintenance
  Allowance</td>
  <td class=xl75 align=right width=176 style='width:132pt'>1,000.00</td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>State Withholding</td>
  <td class=xl74 width=202 style='width:152pt'>0.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>House
  Rent Allowance</td>
  <td class=xl75 align=right width=176 style='width:132pt'>1,000.00</td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>Income Tax</td>
  <td class=xl74 width=202 style='width:152pt'>0.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>Education
  Allowance</td>
  <td class=xl75 align=right width=176 style='width:132pt'>0.00</td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>Professional Tax</td>
  <td class=xl74 width=202 style='width:152pt'>0.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>Car
  Allowance</td>
  <td class=xl75 align=right width=176 style='width:132pt'>0.00</td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>Personal Loan</td>
  <td class=xl74 width=202 style='width:152pt'>0.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>Other
  Allowance</td>
  <td class=xl75 align=right width=176 style='width:132pt'>0.00</td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>Advance Salary</td>
  <td class=xl74 width=202 style='width:152pt'>0.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'>Fuel</td>
  <td class=xl75 align=right width=176 style='width:132pt'>0.00</td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'>Other Deductions</td>
  <td class=xl74 width=202 style='width:152pt'>0.00 </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'></td>
  <td class=xl75 width=176 style='width:132pt'></td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'></td>
  <td class=xl74 width=202 style='width:152pt'></td>
 </tr>
 <tr height=26 style='mso-height-source:userset;height:19.5pt'>
  <td height=26 class=xl78 width=184 style='height:19.5pt;width:138pt'>Total
  Earnings</td>
  <td class=xl79 width=176 style='width:132pt'>7,400.00</td>
  <td class=xl68 width=31 style='width:23pt'></td>
  <td class=xl78 width=190 style='width:143pt'>Total Deduction</td>
  <td class=xl80 width=202 style='width:152pt'>530.00</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'></td>
  <td class=xl68 width=176 style='width:132pt'></td>
  <td class=xl68 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'></td>
  <td class=xl76 width=202 style='width:152pt'></td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl86 style='height:15.75pt'></td>
  <td class=xl67 width=176 style='width:132pt'></td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl84 width=190 style='width:143pt'><span
  style='mso-spacerun:yes'> </span>NET SALARY</td>
  <td class=xl71 width=202 style='width:152pt'>6,870.00</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl67 width=184 style='height:15.75pt;width:138pt'></td>
  <td class=xl67 width=176 style='width:132pt'></td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl70 width=190 style='width:143pt'></td>
  <td class=xl72 width=202 style='width:152pt'></td>
 </tr>
 <tr height=26 style='mso-height-source:userset;height:19.5pt'>
  <td colspan=5 height=26 class=xl90 width=783 style='height:19.5pt;width:588pt'>Payment
  Information for Check</td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td height=29 class=xl70 width=184 style='height:21.75pt;width:138pt'>Check<span
  style='mso-spacerun:yes'>  </span>Number:<span
  style='mso-spacerun:yes'>       </span></td>
  <td class=xl66 width=176 style='width:132pt'>***************</td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl70 width=190 style='width:143pt'>Check Date:</td>
  <td class=xl86>[00 . 00 . 0000]</td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td height=29 class=xl70 width=184 style='height:21.75pt;width:138pt'>Name of
  Bank:</td>
  <td class=xl67 width=176 style='width:132pt'>[Bank Name]</td>
  <td class=xl67 width=31 style='width:23pt'></td>
  <td class=xl67 width=190 style='width:143pt'></td>
  <td class=xl67 width=202 style='width:152pt'></td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:15.75pt'>
  <td colspan=5 height=21 class=xl90 width=783 style='height:15.75pt;
  width:588pt'>Payment Information for Bank Deposit/Transfer</td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:15.75pt'>
  <td height=21 class=xl70 width=184 style='height:15.75pt;width:138pt'>Name of
  Bank:</td>
  <td class=xl85 width=176 style='width:132pt'>[Bank Name]</td>
  <td class=xl83 width=31 style='width:23pt'></td>
  <td class=xl83 width=190 style='width:143pt'>Account #</td>
  <td class=xl85 width=202 style='width:152pt'>******************</td>
 </tr>
 <tr height=30 style='mso-height-source:userset;height:22.5pt'>
  <td height=30 class=xl83 width=184 style='height:22.5pt;width:138pt'>Account
  Title:</td>
  <td class=xl85 width=176 style='width:132pt'>[Account Title]</td>
  <td class=xl83 width=31 style='width:23pt'></td>
  <td class=xl83 width=190 style='width:143pt'>Transfer Date:</td>
  <td class=xl86>[00 . 00 . 0000]</td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td colspan=5 height=20 class=xl97 style='height:15.0pt'></td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl83 width=184 style='height:15.75pt;width:138pt'>Employee
  Signature:</td>
  <td class=xl88 width=176 style='width:132pt'><u style='visibility:hidden;
  mso-ignore:visibility'>&nbsp;</u></td>
  <td class=xl73 width=31 style='width:23pt'></td>
  <td class=xl83 width=190 style='width:143pt'>Director<span
  style='mso-spacerun:yes'>  </span>Signature:</td>
  <td class=xl88 width=202 style='width:152pt'><u style='visibility:hidden;
  mso-ignore:visibility'>&nbsp;</u></td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=184 style='width:138pt'></td>
  <td width=176 style='width:132pt'></td>
  <td width=31 style='width:23pt'></td>
  <td width=190 style='width:143pt'></td>
  <td width=202 style='width:152pt'></td>
 </tr>
 <![endif]>
</table>
 <body link=blue vlink=purple>

<table border=0 cellpadding=0 cellspacing=0 width=64 style='border-collapse:
 collapse;table-layout:fixed;width:48pt'>
 <col width=64 style='width:48pt'>
 <tr height=20 style='height:15.0pt'>
  <td height=20 width=64 style='height:15.0pt;width:48pt'></td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=64 style='width:48pt'></td>
 </tr>
 <![endif]>
</table>

</body>
 <noframes>
  <body>
   <p>This page uses frames, but your browser doesn't support them.</p>
  </body>
 </noframes>
</frameset>
</html>
