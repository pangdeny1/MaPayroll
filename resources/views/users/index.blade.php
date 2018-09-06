@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page">
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="{{ route("home") }}">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i> Dashboard
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">
                                    Settings
                                </a>
                            </li>
                            <li class="breadcrumb-item active">
                                Users
                            </li>
                        </ol>
                    </nav>
                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto mb-0">
                            Users
                        </h1>
                        <div class="btn-toolbar">
                            <a href="{{ route("users.export") }}" class="btn btn-light">
                                <i class="far fa-file-excel"></i>
                                <span class="ml-1">Export as excel</span>
                            </a>
                            @can("create", \App\User::class)
                            <a href="{{ route("users.create") }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                New user
                            </a>
                            @endcan
                        </div>
                    </div>
                </header>

                <div class="page-section">
                    <section class="card shadow-1 border-0 card-fluid">
                        <header class="card-header">
                            <ul class="nav nav-tabs card-header-tabs">
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") ? "" : "active" }}" 
                                        href="{{ route("users.index") }}"
                                    >
                                        All
                                    </a>
                                </li>
                            </ul>
                        </header>

                        <div class="card-body">

                            <div class="text-muted"> Showing {{ $users->firstItem() }} to {{ $users->lastItem() }} of {{ $users->total() }} entries </div>
                            
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th nowrap>Full name</th>
                                            <th nowrap>Phone</th>
                                            <th nowrap>Email</th>
                                            <th nowrap>Roles</th>
                                            <th nowrap>Permissions</th>
                                            <th nowrap></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($users as $user)
                                        <tr>
                                            <td class="align-middle" nowrap>
                                                <a href="{{ route("users.show", $user) }}">
                                                    {{ $user->full_name }}
                                                </a>
                                            </td>
                                            <td class="align-middle" nowrap>{{ $user->phone }}</td>
                                            <td class="align-middle" nowrap>{{ $user->email }}</td>
                                            <td class="align-middle text-capitalize" nowrap>
                                                {{ $user->roles->count() }}
                                                {{ str_plural("role", $user->roles->count()) }}
                                            </td>
                                            <td class="align-middle text-capitalize" nowrap>
                                                {{ $user->getAbilities()->count() }}
                                                {{ str_plural("permission", $user->getAbilities()->count()) }}
                                            </td>
                                            <td class="align-middle text-right" nowrap>
                                                @can("edit", $user)
                                                <a href="{{ route("users.edit", $user) }}" class="btn btn-sm btn-secondary">
                                                    <i class="fa fa-pencil-alt"></i>
                                                    <span class="sr-only">Edit</span>
                                                </a>
                                                @endcan

                                                @can("delete", $user)
                                                <a href="javascript:void(0)"
                                                   class="btn btn-sm btn-secondary"
                                                   onclick="event.preventDefault(); document.getElementById('deletion-form-{{$user->id}}').submit();"
                                                >
                                                    <i class="far fa-trash-alt"></i>
                                                    <span class="sr-only">Remove</span>
                                                    <form id="deletion-form-{{$user->id}}"
                                                          action="{{ route('users.destroy', $user) }}"
                                                          method="POST"
                                                          class="d-none"
                                                    >
                                                        @csrf
                                                        @method("delete")
                                                    </form>
                                                </a>
                                                @endcan
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>

                            <!-- .pagination -->
                            {{ $users->links() }}
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection