@extends("layouts.master")

@section("content")
 <!-- START BREADCRUMB -->
            
                
                       
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                 
                    <div class="row">
                        <div class="col-md-12">
                            
                            <!-- START DATATABLE EXPORT -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"> <i class="fa fa-employeequalification"> <a href="{{url('createemployeequalification')}}">Add New employee Qualification </a></i>
                </h3>
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
                                    <th>Employee</th>
                                    <th>Qualification</th>
                                    <th>Level</th>
                                    <th>Institute</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    <th>View </th>
                                    <th >Edit</th>
                                     <th >Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($employeequalifications as $employeequalification)
                                <tr>
                                   
                                    <td>
                                      @foreach ($employees as $employee)
                                        @if ($employee->employeeid == $employeequalification->employeeid)
                                            {{ $employee->firstname }} {{$employee->lastname}}
                                        @endif
                                    @endforeach
                                    </td>
                                    <td>
                                       @foreach ($qualifications as $qualification)
                                        @if ($qualification->id == $employeequalification->qualificationid)
                                            {{ $qualification->qualificationname }}
                                        @endif
                                    @endforeach
                                    </td>
                                    <td>
                                  @foreach ($levels as $level)
                                        @if ($level->id == $employeequalification->levelid)
                                            {{ $level->qlevelname }}
                                        @endif
                                    @endforeach
                                  
                                    </td>
                                    <td>@foreach ($institutions as $institution)
                                        @if ($institution->id == $employeequalification->institutionid)
                                            {{ $institution->institutename }}
                                        @endif
                                    @endforeach</td>
                                    <td>{{ $employeequalification->datefrom }}</td>
                                    <td>{{ $employeequalification->dateto }}</td>
                                     <td>
                                        <a href="{{ url('showemployeequalification/'.$employeequalification->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editemployeequalification/'.$employeequalification->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deleteemployeequalification/'.$employeequalification->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
                                    </td>
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