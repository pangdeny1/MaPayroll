@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-qualificationlevel"> <a href="{{url('createqualificationlevel')}}">Add New qualificationlevel </a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($qualificationlevels->isEmpty())
                        <p>There are currently no qualificationlevels.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>qualificationlevel</th>
                                    <th>Description </th>
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($qualificationlevels as $qualificationlevel)
                                <tr>
                                   
                                   
                                    <td>
                                  {{ $qualificationlevel->id}}
                                   
                                    </td>
                                   
                                    <td>{{ $qualificationlevel->qlevelname }}</td>

                                    <td>{{ $qualificationlevel->qleveldesc }}</td>
                                     <td>
                                        <a href="{{ url('showqualificationlevel/'.$qualificationlevel->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editqualificationlevel/'.$qualificationlevel->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deletequalificationlevel/'.$qualificationlevel->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
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