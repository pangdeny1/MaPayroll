@extends('layouts.pagelayout')
@section('content')
 <!-- START BREADCRUMB -->
            
                
                       
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                 
                    <div class="row">
                        <div class="col-md-12">
                            
                            <!-- START DATATABLE EXPORT -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-branch"> <a href="addemployee"> Add new employee </a></i></h3>
                                    <div class="btn-group pull-right">
                                        <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                                        <ul class="dropdown-menu">
                                            
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'excel',escape:'false'});"><img src='img/icons/xls.png' width="24"/> XLS</a></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'doc',escape:'false'});"><img src='img/icons/word.png' width="24"/> Word</a></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'pdf',escape:'false'});"><img src='img/icons/pdf.png' width="24"/> PDF</a></li>
                                        </ul>
                                    </div>                                    
                                    
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        @if (Session::has('message'))
    <div class="alert alert-info">{{ Session::get('message') }}</div>
@endif
                                        <table id="customers2" class="table datatable">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Position</th>
                                                    <th>Status</th>
                                                    <th>Gender</th>
                                                    <th>Start date</th>
                                                    <th>Salary</th>
                                                    <th>View </th>
                                                    <th >Edit</th>
                                                    <!-- <th>Delete</th>-->

                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($employees as $employee)
                                                <tr>
                                                    <td>{{$employee->firstname}} {{$employee->middlename}} {{$employee->lastname}}</td>
                                                    <td>{{$employee->jobid}}</td>
                                                    <td>{{$employee->active}}</td>
                                                    <td>{{$employee->gender}}</td>
                                                    <td>{{$employee->hiredate}}</td>
                                                    <td>
                                                   @if($employee->paytype==2)
                                                        {{$employee->hourlyrate}}
                                                       

                                                       @else
                                                    {{$employee->periodrate}}
                                                    
                                                    @endif
                                                </td>
                                                    <th ><a href="#"  data-toggle="modal" data-backdrop="static" data-keyboard="false" data-target="#modal_change_password" class="btn btn-primary">View</a></th>
                                                    <th >
                                                    <a href="{{ URL::to('editemployee/'.$employee->employeeid) }}" class="btn btn-primary">Edit</a></th>
                                                    <!-- <th><a href="{{ URL::to('employeedelete/' . $employee->employeeid) }} " onclick="return confirm('Are you sure you want to delete this Employee?')"; >Delete</a></th>
                                                    <th><a class="btn btn-sm btn-info btn-block" href="{{ URL::to('editemployee/' . $employee->employeeid . '/edit') }}"
                                                      data-toggle="tooltip" title="Edit">Edit</a> </th> -->
                                                </tr>
                                                 
                                               
                                               @endforeach
                                               
                                            </tbody>
                                        </table>  

                                         <div class="modal animated fadeIn" id="modal_change_password" tabindex="-1" role="dialog" aria-labelledby="smallModalHead" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="smallModalHead">Employee Details</h4>
                    </div>
                    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                Employee Detail Goes here
               <!-- include('employee.viewemployee'); -->
                </div>                                  
                                    </div>
                                </div>
                            </div>
                            <!-- END DATATABLE EXPORT -->  


                              <!-- START THIS PAGE PLUGINS-->        
        <script type="text/javascript" src="{{asset('js/plugins/icheck/icheck.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js')}}"></script>
        
        <script type="text/javascript" src="{{asset('js/plugins/datatables/jquery.dataTables.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('js/plugins/tableexport/tableExport.js')}}"></script>
      <script type="text/javascript" src="{{asset('js/plugins/tableexport/jquery.base64.js')}}"></script>
      <script type="text/javascript" src="{{asset('js/plugins/tableexport/html2canvas.js')}}"></script>
      <script type="text/javascript" src="{{asset('js/plugins/tableexport/jspdf/libs/sprintf.js')}}"></script>
      <script type="text/javascript" src="{{asset('js/plugins/tableexport/jspdf/jspdf.js')}}"></script>
      <script type="text/javascript" src="{{asset('js/plugins/tableexport/jspdf/libs/base64.js')}}"></script>  


        <!-- END THIS PAGE PLUGINS-->                            
                            
            
        @endsection