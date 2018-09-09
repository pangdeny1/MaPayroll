@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-qualification"> <a href="{{url('createqualification')}}">Add New Qualification </a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($qualifications->isEmpty())
                        <p>There are currently no qualifications.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Qualification</th>
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($qualifications as $qualification)
                                <tr>
                                   
                                   
                                    <td>
                                  {{ $qualification->id}}
                                   
                                    </td>
                                   
                                    <td>{{ $qualification->qualificationname }}</td>
                                     <td>
                                        <a href="{{ url('showqualification/'.$qualification->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editqualification/'.$qualification->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deletequalification/'.$qualification->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
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