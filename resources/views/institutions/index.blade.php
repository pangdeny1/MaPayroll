@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-institution"> <a href="{{url('createinstitution')}}">Add New institution </a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($institutions->isEmpty())
                        <p>There are currently no institutions.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>institution</th>
                                    <th>Country </th>
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($institutions as $institution)
                                <tr>
                                   
                                   
                                    <td>
                                  {{ $institution->id}}
                                   
                                    </td>
                                   
                                    <td>{{ $institution->institutename }}</td>

                                    <td>

                                    @foreach ($countries as $country)
                                        @if ($country->id == $institution->country)
                                            {{ $country->countryname }}
                                        @endif
                                    @endforeach
                                </td>
                                     <td>
                                        <a href="{{ url('showinstitution/'.$institution->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editinstitution/'.$institution->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deleteinstitution/'.$institution->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
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