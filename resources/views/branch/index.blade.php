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
                    <i class="fa fa-branch"> <a href="{{url('createbranch')}}">Add New branch Title</a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($branches->isEmpty())
                        <p>There are currently no branches.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    
                                    <th>Branch Name</th>
                                    <th>Location</th>
                                    <th>Last Updated</th>
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($branches as $branch)
                                <tr>
                                
                                    <td>
                                        <a href="{{ url('branch/'. $branch->id) }}">
                                            #{{ $branch->id }} - {{ $branch->branchname }}
                                        </a>
                                    </td>
                                   <td>{{ $branch->branclocation }}</td>
                                    <td>{{ $branch->updated_at }}</td>
                                     <td>
                                        <a href="{{ url('showbranch/'.$branch->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editbranch/'.$branch->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deletebranch/'.$branch->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                        {{ $branches->render() }}
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection