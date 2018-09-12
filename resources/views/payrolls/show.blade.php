@extends("layouts.master")

@section("content")
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
 
    <td height="180" valign="top"> 
    
      <table width="90%" border="1" cellspacing="0" cellpadding="0" align="center" bordercolordark="#CCCCCC" bordercolorlight="#CCCCCC" bgcolor="#F2F2F2">
        

        <tr bgcolor="#F4F4F4"> 
          <td height="30" > 
            <div align="left"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b> Payroll : {{$payroll->payrolldesc}}</b>
              :</font></div>
          </td>
          </tr>
       
         <tr bgcolor="#F4F4F4"> 
          <td height="300" colspan="6" valign=top> 
           <!-- START PROJECTS BLOCK -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-title-box">
                      @include('includes.flash')
                      

                          <table>
                                 <tr>
                                  <td>
                         <form class="form-horizontal" role="form" method="POST" action="{{ url('/generate/'.$payroll->id) }}">
                        {!! csrf_field() !!}

                         <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-ticket"></i> Generate Payroll Data
                                </button>
                            </div>
                        </div>
                    </form>
                          </td>
                     <td>  
                      <form class="form-horizontal" role="form" method="POST" action="{{ url('/void/'.$payroll->id) }}">
                        {!! csrf_field() !!}

                         <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-ticket"></i> Void payroll Period
                                </button>
                            </div>
                        </div>
                    </form>
                   </td>
                    <td> <form class="form-horizontal" role="form" method="POST" action="{{ url('/close/'.$payroll->id) }}">
                        {!! csrf_field() !!}

                         <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-ticket"></i> Close payroll Period
                                </button>
                            </div>
                        </div>
                    </form>
                     </td>
                       <td>
                        <form class="form-horizontal" role="form" method="POST" action="{{ url('/open/'.$payroll->id) }}">
                        {!! csrf_field() !!}

                         <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-ticket"></i> Open payroll Period
                                </button>
                            </div>
                        </div>
                    </form>
                            </td>
                                 </tr>
                                 </table>       
                       
                                  
                                <div class="panel-body panel-body-table">
                                    
                                    <div class="table-responsive">
                                        <table id="customers2" class="table datatable">
                                            <thead>
                                                <tr>
                                                    <th width="50%">Eligible Employee</th>
                                                    <th width="20%">Period Rate</th>
                                                    <th width="20%">Status</th>
                                                   
                                                </tr>
                                            </thead>
                                            <tbody>
                                       @foreach($employees as $employee)
                                                <tr>
                                                    <td><strong>{{$employee->first_name." ".$employee->last_name}}</strong></td>
                                                    <td><strong>{{$employee->period_rate}}</strong></td>
                                                    <td><span class="label label-danger">Eligible</span></td>
                                                    
                                                </tr>
                                           @endforeach
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                </div>
                            </div>
                            <!-- END PROJECTS BLOCK -->   
          </td>
          
        </tr>
      </table>
      
    </td>
  </tr>

</table>

@endsection