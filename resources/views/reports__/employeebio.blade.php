<?php
/*header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="' . $fileName . '"'); */
$fileName=$employee->firstname." ".$employee->lastname." Detail.doc";

//header('Content-Type: application/vnd.openxmlformats-officedocument.wordprocessingml.document');
//header('Content-Disposition: attachment;filename="' . $fileName . '"');

?><html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 15">
<meta name=Originator content="Microsoft Word 15">
<link rel=File-List href="Employee%20information%20form_files/filelist.xml">
<link rel=Edit-Time-Data href="Employee%20information%20form_files/editdata.mso">

<title>Employee information form</title>

<link rel=dataStoreItem href="Employee%20information%20form_files/item0001.xml"
target="Employee%20information%20form_files/props002.xml">
<link rel=dataStoreItem href="Employee%20information%20form_files/item0003.xml"
target="Employee%20information%20form_files/props004.xml">
<link rel=dataStoreItem href="Employee%20information%20form_files/item0005.xml"
target="Employee%20information%20form_files/props006.xml">
<link rel=themeData href="Employee%20information%20form_files/themedata.thmx">
<link rel=colorSchemeMapping
href="Employee%20information%20form_files/colorschememapping.xml">

<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:-536869121 1107305727 33554432 0 415 0;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-520081665 -1073717157 41 0 66047 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:9.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Arial",sans-serif;
	mso-ascii-font-family:Arial;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:"Times New Roman";
	mso-hansi-font-family:Arial;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";}
h1
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-next:Normal;
	margin-top:10.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:0in;
	mso-pagination:widow-orphan;
	mso-outline-level:1;
	font-size:12.0pt;
	font-family:"Arial",sans-serif;
	mso-ascii-font-family:Arial;
	mso-ascii-theme-font:major-latin;
	mso-hansi-font-family:Arial;
	mso-hansi-theme-font:major-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-font-kerning:0pt;
	mso-bidi-font-weight:normal;}
h2
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-next:Normal;
	margin-top:10.0pt;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:0in;
	margin-bottom:.0001pt;
	text-align:center;
	mso-pagination:widow-orphan;
	mso-outline-level:2;
	background:#404040;
	mso-background-themecolor:text1;
	mso-background-themetint:191;
	font-size:11.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Arial",sans-serif;
	mso-ascii-font-family:Arial;
	mso-ascii-theme-font:major-latin;
	mso-hansi-font-family:Arial;
	mso-hansi-theme-font:major-latin;
	mso-bidi-font-family:"Times New Roman";
	color:white;
	mso-themecolor:background1;
	mso-bidi-font-weight:normal;}
h3
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-next:Normal;
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	mso-outline-level:3;
	font-size:8.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Arial",sans-serif;
	mso-ascii-font-family:Arial;
	mso-ascii-theme-font:minor-latin;
	mso-hansi-font-family:Arial;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	font-weight:normal;
	font-style:italic;
	mso-bidi-font-style:normal;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-noshow:yes;
	mso-style-unhide:no;
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:8.0pt;
	font-family:"Tahoma",sans-serif;
	mso-fareast-font-family:"Times New Roman";}
p.FieldText, li.FieldText, div.FieldText
	{mso-style-name:"Field Text";
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-link:"Field Text Char";
	mso-style-next:Normal;
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:9.0pt;
	mso-bidi-font-size:9.5pt;
	font-family:"Arial",sans-serif;
	mso-ascii-font-family:Arial;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:"Times New Roman";
	mso-hansi-font-family:Arial;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	font-weight:bold;
	mso-bidi-font-weight:normal;}
span.FieldTextChar
	{mso-style-name:"Field Text Char";
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:"Field Text";
	mso-ansi-font-size:9.5pt;
	mso-bidi-font-size:9.5pt;
	font-family:"Arial",sans-serif;
	mso-ascii-font-family:Arial;
	mso-hansi-font-family:Arial;
	mso-ansi-language:EN-US;
	mso-fareast-language:EN-US;
	mso-bidi-language:AR-SA;
	font-weight:bold;
	mso-bidi-font-weight:normal;}
p.CompanyName, li.CompanyName, div.CompanyName
	{mso-style-name:"Company Name";
	mso-style-unhide:no;
	mso-style-qformat:yes;
	margin:0in;
	margin-bottom:.0001pt;
	text-align:right;
	mso-pagination:widow-orphan;
	font-size:14.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Arial",sans-serif;
	mso-ascii-font-family:Arial;
	mso-ascii-theme-font:major-latin;
	mso-fareast-font-family:"Times New Roman";
	mso-hansi-font-family:Arial;
	mso-hansi-theme-font:major-latin;
	mso-bidi-font-family:"Times New Roman";
	color:#404040;
	mso-themecolor:text1;
	mso-themetint:191;
	font-weight:bold;
	mso-bidi-font-weight:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-size:10.0pt;
	mso-ansi-font-size:10.0pt;
	mso-bidi-font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:.75in 1.0in .75in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.WordSection1
	{page:WordSection1;}
 /* List Definitions */
 @list l0
	{mso-list-id:-132;
	mso-list-type:simple;
	mso-list-template-ids:2080252592;}
@list l0:level1
	{mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;}
@list l1
	{mso-list-id:-131;
	mso-list-type:simple;
	mso-list-template-ids:1478264040;}
@list l1:level1
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	margin-left:1.0in;
	text-indent:-.25in;}
@list l2
	{mso-list-id:-130;
	mso-list-type:simple;
	mso-list-template-ids:-1486833392;}
@list l2:level1
	{mso-level-tab-stop:.75in;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l3
	{mso-list-id:-129;
	mso-list-type:simple;
	mso-list-template-ids:-1287877342;}
@list l4
	{mso-list-id:-128;
	mso-list-type:simple;
	mso-list-template-ids:1077812192;}
@list l4:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l5
	{mso-list-id:-127;
	mso-list-type:simple;
	mso-list-template-ids:-260811080;}
@list l5:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	margin-left:1.0in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l6
	{mso-list-id:-126;
	mso-list-type:simple;
	mso-list-template-ids:1500931268;}
@list l6:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.75in;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l7
	{mso-list-id:-125;
	mso-list-type:simple;
	mso-list-template-ids:21771712;}
@list l7:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l8
	{mso-list-id:-120;
	mso-list-type:simple;
	mso-list-template-ids:-296442050;}
@list l8:level1
	{mso-level-tab-stop:.25in;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;}
@list l9
	{mso-list-id:-119;
	mso-list-type:simple;
	mso-list-template-ids:1439578292;}
@list l9:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.25in;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>

</head>

<body lang=EN-US style='tab-interval:.5in'>

<div class=WordSection1>

<table class=MsoTableGrid border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;border:none;mso-yfti-tbllook:
 1184;mso-padding-alt:0in 0in 0in 0in;mso-border-insideh:none;mso-border-insidev:
 none'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes'>
  <td width=319 valign=top style='width:239.4pt;padding:0in 0in 0in 0in'>
  <p class=MsoNormal><span style='mso-no-proof:yes'><!----><![if !vml]><img width=90 height=45
  src="Employee%20information%20form_files/image001.gif" alt="Your logo here"
  v:shapes="Picture_x0020_1"><![endif]></span></p>
  </td>
  <td width=319 valign=top style='width:239.4pt;padding:0in 0in 0in 0in'>
  <p class=CompanyName>{{$company->coyname}}</p>
  </td>
 </tr>
</table>

<h1>Employee Information</h1>

<h2>Personal Information</h2>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Full Name: </p>
  </td>
  <td width=278 valign=bottom style='width:208.5pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText>{{$employee->titlename}} : {{$employee->lastname}} </o:p></p>
  </td>
  <td width=144 valign=bottom style='width:108.25pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText>{{$employee->firstname}} </o:p></p>
  </td>
  <td width=100 valign=bottom style='width:74.75pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee ->middlename}} </o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in'>
  <p class=MsoNormal><o:p>&nbsp;</o:p></p>
  </td>
  <td width=278 valign=bottom style='width:208.5pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in'>
  <h3>Last</h3>
  </td>
  <td width=144 valign=bottom style='width:108.25pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in'>
  <h3>First</h3>
  </td>
  <td width=100 valign=bottom style='width:74.75pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in'>
  <h3>M.I.</h3>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.2in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.2in'>
  <p class=MsoNormal>Address:</p>
  </td>
  <td width=422 valign=bottom style='width:316.75pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p>P O Box 3010 Moshi</o:p></p>
  </td>
  <td width=100 valign=bottom style='width:74.75pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p>&nbsp;</o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in'>
  <p class=MsoNormal><o:p>&nbsp;</o:p></p>
  </td>
  <td width=422 valign=bottom style='width:316.75pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in'>
  <h3>Street Address</h3>
  </td>
  <td width=100 valign=bottom style='width:74.75pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in'>
  <h3>Apartment/Unit #</h3>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.2in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.2in'>
  <p class=MsoNormal><o:p></o:p></p>
  </td>
  <td width=344 valign=bottom style='width:258.1pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p>{{$employee->regionname}}</o:p></p>
  </td>
  <td width=78 valign=bottom style='width:58.65pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p>{{$employee->districtname}}</o:p></p>
  </td>
  <td width=100 valign=bottom style='width:74.75pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p>{{$employee->zip}}</o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in'>
  <p class=MsoNormal><o:p>two</o:p></p>
  </td>
  <td width=344 valign=bottom style='width:258.1pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in'>
  <h3>Region</h3>
  </td>
  <td width=78 valign=bottom style='width:58.65pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in'>
  <h3>District</h3>
  </td>
  <td width=100 valign=bottom style='width:74.75pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in'>
  <h3>ZIP Code</h3>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p></o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;
  height:.2in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.2in'>
  <p class=MsoNormal>Home Phone:</p>
  </td>
  <td width=190 valign=bottom style='width:142.35pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p>{{$employee->phone1}}</o:p></p>
  </td>
  <td width=105 valign=bottom style='width:78.7pt;padding:0in 0in 0in 0in;
  height:.2in'>
  <p class=MsoNormal>Alternate Phone:</p>
  </td>
  <td width=227 valign=bottom style='width:170.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p>{{$employee->phone2}}</o:p></p>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p></o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Personal Email</p>
  </td>
  <td width=522 valign=bottom style='width:391.5pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->email2}}</o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:.35in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.35in'>
  <p class=MsoNormal> Gov’t ID:</p>
  </td>
  <td width=522 valign=bottom style='width:391.5pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.35in'>
  <p class=FieldText><o:p>{{$employee->governmentid}}</o:p></p>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p></o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;
  height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Birth Date:</p>
  </td>
  <td width=114 valign=bottom style='width:85.5pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->birthdate}}</o:p></p>
  </td>
  <td width=96 valign=bottom style='width:1.0in;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Marital Status:</p>
  </td>
  <td width=312 valign=bottom style='width:3.25in;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->marital}}</o:p></p>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p></o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;
  height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Spouse’s Name:</p>
  </td>
  <td width=522 valign=bottom style='width:391.5pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->spousename}}</o:p></p>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p>space11</o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;
  height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Spouse’s Address:</p>
  </td>
  <td width=208 valign=bottom style='width:155.65pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->spouseaddress}}</o:p></p>
  </td>
  <td width=132 valign=bottom style='width:99.15pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Spouse’s Email and Phone:</p>
  </td>
  <td width=182 valign=bottom style='width:136.7pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->spouseemail.' / '.$employee->spousephone}}</o:p></p>
  </td>
 </tr>
</table>

<h2>Job Information</h2>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Title:</p>
  </td>
  <td width=190 valign=bottom style='width:142.35pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->jobid}}</o:p></p>
  </td>
  <td width=88 colspan=2 valign=bottom style='width:66.15pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Employee ID:</p>
  </td>
  <td width=244 valign=bottom style='width:183.0pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->employeecode}}</o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Branch:</p>
  </td>
  <td width=192 colspan=2 valign=bottom style='width:2.0in;border:none;
  border-bottom:solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->branchname}}</o:p></p>
  </td>
  <td width=86 valign=bottom style='width:64.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Department:</p>
  </td>
  <td width=244 valign=bottom style='width:183.0pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->departmentname}}</o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Social Security Scheme:</p>
  </td>
  <td width=192 colspan=2 valign=bottom style='width:2.0in;border:none;
  border-bottom:solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->penname.'->'.$employee->ssnumber}}</o:p></p>
  </td>
  <td width=86 valign=bottom style='width:64.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Work Email:</p>
  </td>
  <td width=244 valign=bottom style='width:183.0pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->email1}}</o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Work Phone:</p>
  </td>
  <td width=192 colspan=2 valign=bottom style='width:2.0in;border:none;
  border-bottom:solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->phone1}}</o:p></p>
  </td>
  <td width=86 valign=bottom style='width:64.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Cell Phone:</p>
  </td>
  <td width=244 valign=bottom style='width:183.0pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->phone2}}</o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4;mso-yfti-lastrow:yes;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Contract Date:</p>
  </td>
  <td width=192 colspan=2 valign=bottom style='width:2.0in;border:none;
  border-bottom:solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText>Start Date:: <o:p>{{$employee->hiredate}}  End  Date :: {{$employee->terminatedate}}</o:p></p>
  </td>
  <td width=86 valign=bottom style='width:64.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Salary:</p>
  </td>
  <td width=244 valign=bottom style='width:183.0pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText>Tsh {{number_format($employee->periodrate,2)}}</p>
  </td>
 </tr>
 <![if !supportMisalignedColumns]>
 <tr height=0>
  <td width=116 style='border:none'></td>
  <td width=215 style='border:none'></td>
  <td width=2 style='border:none'></td>
  <td width=98 style='border:none'></td>
  <td width=277 style='border:none'></td>
 </tr>
 <![endif]>
</table>

<h2>Next of kin(Person to be Notified incase of Emergence)</h2>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Full Name:</p>
  </td>
  <td width=290 valign=bottom style='width:217.35pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->nextofkinname}}</o:p></p>
  </td>
  <td width=132 valign=bottom style='width:98.7pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p></o:p></p>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p></o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:.1in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <p class=MsoNormal><o:p></o:p></p>
  </td>
  <td width=290 valign=bottom style='width:217.35pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <h3></h3>
  </td>
  <td width=132 valign=bottom style='width:98.7pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <h3></h3>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <h3></h3>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p></o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.2in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.2in'>
  <p class=MsoNormal>Address:</p>
  </td>
  <td width=421 valign=bottom style='width:316.05pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p>{{$employee->nextofkinaddress}}</o:p></p>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p></o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:.1in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <p class=MsoNormal><o:p></o:p></p>
  </td>
  <td width=421 valign=bottom style='width:316.05pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in;height:.1in'>
  <h3> Address</h3>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <h3></h3>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p></o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.2in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.2in'>
  <p class=FieldText><o:p></o:p></p>
  </td>
  <td width=343 valign=bottom style='width:257.3pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p></o:p></p>
  </td>
  <td width=78 valign=bottom style='width:58.75pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p></o:p></p>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.2in'>
  <p class=FieldText><o:p></o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:.1in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <p class=MsoNormal><o:p></o:p></p>
  </td>
  <td width=343 valign=bottom style='width:257.3pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in;height:.1in'>
  <h3>City</h3>
  </td>
  <td width=78 valign=bottom style='width:58.75pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in;height:.1in'>
  <h3>State</h3>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;mso-border-top-alt:
  solid windowtext .5pt;padding:0in 0in 0in 0in;height:.1in'>
  <h3>ZIP Code</h3>
  </td>
 </tr>
</table>

<p class=MsoNormal><o:p></o:p></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Primary Phone:</p>
  </td>
  <td width=192 valign=bottom style='width:2.0in;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->nextofkinphone}}</o:p></p>
  </td>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Alternate Phone:</p>
  </td>
  <td width=228 valign=bottom style='width:171.0pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p></o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:.3in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.3in'>
  <p class=MsoNormal>Relationship:</p>
  </td>
  <td width=522 colspan=3 valign=bottom style='width:391.5pt;border:none;
  border-bottom:solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>Next of Kin</o:p></p>
  </td>
 </tr>
</table>

<p class=MsoNormal><span style='font-size:4.0pt'><o:p>space41</o:p></span></p>

<h2>Employee Experience</h2>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
 @if ($workexperience->isEmpty())
                        <p>There are currently no employee employee experience.</p>
                    @endif
 <?php $i=0; ?>
  <tr>
 	<td>Company Name</td>
 	<td>Job title</td>
 	<td>Start date</td>
 	<td>End Date</td>
 </tr>
 @foreach ($workexperience as $experience)
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.3in'>
 
  <td width=290 valign=bottom style='width:217.35pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$i+=1}}. {{ $experience->companyname }}</o:p></p>
  </td>
  <td width=132 valign=bottom style='width:98.7pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{ $experience->jobtitle }}</o:p></p>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{ $experience->startdate }}</o:p></p>
  </td>

   <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{ $experience->enddate }}</o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:.1in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <p class=MsoNormal><o:p></o:p></p>
  </td>
  <td width=290 valign=bottom style='width:217.35pt;padding:0in 0in 0in 0in;
  height:.1in'>
 
  </td>
  <td width=132 valign=bottom style='width:98.7pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>
  <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>

   <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>
 </tr>
  @endforeach
</table>

<h2>Employee Qualifications</h2>


<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
  @if ($employeequalifications->isEmpty())
                        <p>There are currently no employee qualifications.</p>
                    @endif
 <tr>
 	<td>Qualification</td>
 	<td>Institute</td>
 	<td>Level</td>
 	<td>Start date</td>
 	<td>End Date</td>
 </tr>
 
 <?php $i=0; ?>
 @foreach ($employeequalifications as $employeequalification)
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.3in'>
 
  <td width=290 valign=bottom style='width:217.35pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$i+=1}}.  @foreach ($qualifications as $qualification)
                                        @if ($qualification->id == $employeequalification->qualificationid)
                                            {{ $qualification->qualificationname }}
                                        @endif
                                    @endforeach</o:p></p>
  </td>
  <td width=132 valign=bottom style='width:98.7pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>@foreach ($institutions as $institution)
                                        @if ($institution->id == $employeequalification->institutionid)
                                            {{ $institution->institutename }}
                                        @endif
                                    @endforeach</o:p></p>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>@foreach ($levels as $level)
                                        @if ($level->id == $employeequalification->levelid)
                                            {{ $level->qlevelname }}
                                        @endif
                                    @endforeach</o:p></p>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{ $employeequalification->datefrom }}</o:p></p>
  </td>


   <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{ $employeequalification->dateto }}</o:p></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:.1in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <p class=MsoNormal><o:p></o:p></p>
  </td>
  <td width=290 valign=bottom style='width:217.35pt;padding:0in 0in 0in 0in;
  height:.1in'>
 
  </td>
  <td width=132 valign=bottom style='width:98.7pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>
  <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>

   <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>
 </tr>
  @endforeach
</table>


<h2>Employee Dependants</h2>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
  @if ($dependants->isEmpty())
                        <p>There are currently no dependants.</p>
                    @endif
 <tr>
 	<td>Full Name</td>
 	<td>Type</td>
 	<td>Sex</td>
 	<td>Birthdate</td>
 </tr>

 <?php $i=0; ?>
 @foreach ($dependants as $dependant)
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.3in'>
 
  <td width=290 valign=bottom style='width:217.35pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$i+=1}}. {{ $dependant->fullname}}</o:p></p>
  </td>
  <td width=132 valign=bottom style='width:98.7pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>@foreach ($dependanttypes as $dependanttype)
                                        @if ($dependanttype->id == $dependant->deptypeid )
                                            {{ $dependanttype->dependanttype }} 
                                        @endif
                                    @endforeach</o:p></p>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>@foreach ($genders as $gender)
                                        @if ($gender->id == $dependant->sex )
                                            {{ $gender->name }} 
                                        @endif
                                    @endforeach</o:p></p>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{ $dependant->dob }}</o:p></p>
  </td>

   
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:.1in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <p class=MsoNormal><o:p></o:p></p>
  </td>
  <td width=290 valign=bottom style='width:217.35pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>
  <td width=132 valign=bottom style='width:98.7pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>
  <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>

   <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
 
  </td>
 </tr>
  @endforeach
</table>

<h2>Banks Details</h2>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;mso-padding-alt:0in 0in 0in 0in'>
  
 <tr>
 	<td>Bank</td>
 	<td>Account Name</td>
 	<td>Account Number</td>
 	
 </tr>

 <?php $i=0; ?>
 
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.3in'>
 
  <td width=290 valign=bottom style='width:217.35pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$i+=1}}. {{ $employee->bankname}}</o:p></p>
  </td>
  <td width=132 valign=bottom style='width:98.7pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p> {{$employee->accountname}} </o:p></p>
  </td>
  <td width=101 valign=bottom style='width:75.45pt;border:none;border-bottom:
  solid windowtext 1.0pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0in 0in 0in 0in;height:.3in'>
  <p class=FieldText><o:p>{{$employee->atmnumber}} </o:p></p>
  </td>
  

   
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:.1in'>
  <td width=102 valign=bottom style='width:76.5pt;padding:0in 0in 0in 0in;
  height:.1in'>
  <p class=MsoNormal><o:p></o:p></p>
  </td>
  <td width=290 valign=bottom style='width:217.35pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>
  <td width=132 valign=bottom style='width:98.7pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>
  <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
  
  </td>

   <td width=101 valign=bottom style='width:75.45pt;padding:0in 0in 0in 0in;
  height:.1in'>
 
  </td>
 </tr>
 
</table>

</div>

</body>

</html>
