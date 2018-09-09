<?php
$period=$payrollperiod->payrolldesc;
header('Content-Type: application/vnd.ms-excel');
header("Content-Disposition: attachment; filename=\"Payroll -".$period.".xls\"");

        ?>