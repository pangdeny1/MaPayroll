 @extends('layouts.pagelayout')

@section('template_title')
  Create New User
@endsection

@section('template_fastload_css')
@endsection

@section('content')
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-form"> <a href="{{url('createform')}}">Add New form </a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($forms->isEmpty())
                        <p>There are currently no forms.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Company</th>
                                    <th>Employee</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($forms as $form)
                                <tr>
                                   
                                   
                                    <td>
                                  {{ $form->id}}
                                   
                                    </td>
                                   
                                    <td>{{ $form->filename }}</td>
                                    <td>
                                     </td>
                                   
                                    <td>---
                                     <?php $data = json_decode($form->filename); ?>

                                        {{$data[0]}}
                                    </td>
                                    <td>
                                         <?php $images=$form->filename; 
                                        // $images=str_replace("[", "(",$images);
                                           // $images=str_replace("]", ")",$images);
                                            echo json_encode($images);

                                         ?>
                                         
                                         {{$images[0]}}
                                        
                                    </td>
                                     <td>
                                        <a href="{{ url('showform/'.$form->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editform/'.$form->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deleteform/'.$form->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                       
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection