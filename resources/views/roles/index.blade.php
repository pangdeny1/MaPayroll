@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page">
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Settings
                                </a>
                            </li>
                        </ol>
                    </nav>

                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto mb-0">
                            Roles
                        </h1>
                        <div class="btn-toolbar">
                            <a href="{{ route("roles.create") }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                Add a new role
                            </a>
                        </div>
                    </div>
                </header>
                <div class="page-section">
                    <section class="card card-fluid">
                        <header class="card-header">
                            <ul class="nav nav-tabs card-header-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active"> List of roles </a>
                                </li>
                            </ul>
                        </header>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>Role</th>
                                        <th>Name</th>
                                        <th>Members</th>
                                        <th>Permissions</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($roles as $role)
                                        <tr>
                                            <td class="align-middle">
                                                <div>
                                                    <div>{{ $role->title }}</div>
                                                    <div>
                                                        <small>{{ str_limit($role->description, 80)  }}</small>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="align-middle">{{ $role->name }}</td>
                                            <td class="text-capitalize align-middle">
                                                {{ $role->users->count() }}
                                                {{ str_plural("member", $role->users->count()) }}
                                            </td>
                                            <td class="text-capitalize align-middle">
                                                {{ $role->abilities->count() }}
                                                {{ str_plural("Permission", $role->abilities->count()) }}
                                            </td>
                                            <td class="align-middle text-right">
                                                @if($role->name !== "admin")
                                                    <a href="{{ route("roles.edit", $role) }}" class="btn btn-sm btn-secondary">
                                                        <i class="fa fa-pencil-alt"></i>
                                                        <span class="sr-only">Edit</span>
                                                    </a>
                                                    <a href="#" class="btn btn-sm btn-secondary">
                                                        <i class="far fa-trash-alt"></i>
                                                        <span class="sr-only">Remove</span>
                                                    </a>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            {{ $roles->links() }}
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection