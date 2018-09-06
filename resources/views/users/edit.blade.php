@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page has-sidebar">
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Users</a>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title"> Edit user </h1>
                </header>
                <div class="page-section">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="{{ route("users.update", $user) }}"
                                  method="post"
                                  class="card border-0"
                            >
                                @csrf
                                @method("put")
                                <header class="card-header border-bottom-0">
                                    Basic information
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="first_name">First name</label>
                                            <input type="text"
                                                   name="first_name"
                                                   id="first_name"
                                                   class="form-control {{ $errors->has('first_name') ? 'is-invalid' : '' }}"
                                                   value="{{ old("first_name", $user->first_name) }}"
                                                   placeholder="First name..."
                                            >
                                            @if ($errors->has('first_name'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('first_name') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="last_name">Last name</label>
                                            <input type="text"
                                                   name="last_name"
                                                   id="last_name"
                                                   class="form-control {{ $errors->has('last_name') ? 'is-invalid' : '' }}"
                                                   value="{{ old("last_name", $user->last_name) }}"
                                                   placeholder="Last name..."
                                            >
                                            @if ($errors->has('last_name'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('last_name') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="phone">Phone number</label>
                                            <input type="text"
                                                   name="phone"
                                                   id="phone"
                                                   class="form-control {{ $errors->has('phone') ? 'is-invalid' : '' }}"
                                                   value="{{ old("phone", $user->phone) }}"
                                                   placeholder="Phone number..."
                                            >
                                            @if ($errors->has('phone'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('phone') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="email">
                                                Email address
                                            </label>
                                            <input type="email"
                                                   name="email"
                                                   class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}"
                                                   id="email"
                                                   value="{{ old("email", $user->email) }}"
                                                   placeholder="you@example.com"
                                            >
                                            @if ($errors->has('email'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('email') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="birthday">
                                                Birthday
                                                <span class="badge badge-secondary">
                                                    <em>Optional</em>
                                                </span>
                                            </label>
                                            <input type="date"
                                                   name="birthday"
                                                   id="birthday"
                                                   class="form-control {{ $errors->has('birthday') ? 'is-invalid' : '' }}"
                                                   value="{{ old("birthday", $user->birthday) }}"
                                                   placeholder="Phone number..."
                                            >
                                            @if ($errors->has('birthday'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('birthday') }}</strong>
                                                </span>
                                            @endif
                                        </div>

                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label class="d-block">Gender identity</label>
                                            <div class="custom-control custom-control-inline custom-radio">
                                                <input type="radio"
                                                       class="custom-control-input"
                                                       name="gender"
                                                       id="female"
                                                       {{ old("gender", $user->gender) === "female" ? "checked" : "" }}
                                                       value="female"
                                                >
                                                <label class="custom-control-label" for="female">Female</label>
                                            </div>
                                            <div class="custom-control custom-control-inline custom-radio">
                                                <input type="radio"
                                                       class="custom-control-input"
                                                       name="gender"
                                                       {{ old("gender", $user->gender) === "male" ? "checked" : "" }}
                                                       id="male"
                                                       value="male"
                                                >
                                                <label class="custom-control-label" for="male">Male</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                  <hr class="mb-4">
                                <header class="card-header border-bottom-0">
                                    Roles Information
                                </header>
                                <div class="card-body">
                                    <roles-picker inline-template>
                                        <div>
                                            <div class="form-row mb-4">
                                                <div class="form-group col-md-9">
                                                    <label for="roles">Roles</label>
                                                    <select id="roles"
                                                            class="form-control {{ $errors->has('roles') ? 'is-invalid' : '' }}"
                                                            v-model="newRole"
                                                            @change.prevent="addRole"
                                                    >
                                                        <option value="">Choose...</option>
                                                        <option v-for="role in roles"
                                                                :value="role.id"
                                                                v-text="role.title"
                                                        >
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="list-group list-group-flush list-group-divider" v-if="selectedRoles.length">
                                                <div class="list-group-item" v-for="selectedRole in selectedRoles">
                                                    <div class="list-group-item-figure">
                                                        <div class="tile tile-circle" :class="selectedRole.color">
                                                            @{{ selectedRole.placeholder }}
                                                        </div>
                                                    </div>
                                                    <input type="hidden" name="roles[]" :value="selectedRole.name">
                                                    <div class="list-group-item-body">
                                                        <h4 class="list-group-item-title">
                                                            <a href="#" v-text="selectedRole.title"></a>
                                                        </h4>
                                                        <p class="list-group-item-text" v-text="selectedRole.description"></p>
                                                    </div>
                                                    <div class="list-group-item-figure">
                                                        <button @click.prevent="removeRole(selectedRole.id)" class="btn btn-sm btn-light">
                                                            <i class="far fa-trash-alt"></i>
                                                        </button>
                                                    </div>
                                                </div >
                                            </div>
                                        </div>
                                    </roles-picker>
                                </div>
                                <hr class="mb-4">

                                <header class="card-header border-bottom-0">
                                    Address information
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="street">Street address</label>
                                            <input type="text"
                                                   name="street"
                                                   class="form-control {{ $errors->has('street') ? 'is-invalid' : '' }}"
                                                   id="street"
                                                   value="{{ old("street", optional($user->address)->street) }}"
                                                   placeholder="1234 Main St"
                                            >
                                            @if ($errors->has('street'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('street') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="address">
                                                Address 2
                                                <span class="badge badge-secondary">
                                                    <em>Optional</em>
                                                </span>
                                            </label>
                                            <input type="text"
                                                   name="address"
                                                   class="form-control {{ $errors->has('address') ? 'is-invalid' : '' }}"
                                                   id="address"
                                                   placeholder="Apartment or suite"
                                                   value="{{ old("address", optional($user->address)->address) }}"
                                            >
                                            @if ($errors->has('address'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('address') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-5 mb-3">
                                            <label for="country">Country</label>
                                            <select name="country"
                                                    class="custom-select d-block w-100"
                                                    id="country"
                                            >
                                                <option value="Tanzania">Tanzania</option>
                                            </select>
                                            <div class="invalid-feedback"> Please select a valid country. </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="state">State</label>
                                            <select name="state"
                                                    class="custom-select d-block w-100"
                                                    id="state"
                                                    required=""
                                            >
                                                <option value=""> Choose... </option>
                                                @foreach($states as $key => $state)
                                                    <option name="{{ $state["name"] }}" {{ old("state", optional($user->address)->state) === $state["name"] ? "selected" : "" }}>
                                                        {{ $state["name"] }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            <div class="invalid-feedback"> Please provide a valid state. </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="postal_code">Zip</label>
                                            <input type="text"
                                                   name="postal_code"
                                                   class="form-control {{ $errors->has('postal_code') ? 'is-invalid' : '' }}"
                                                   id="postal_code"
                                                   value="{{ old("postal_code", optional($user->address)->postal_code) }}"
                                            >
                                            @if ($errors->has('postal_code'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('postal_code') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <hr class="mb-4">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                                        Save changes
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="page-sidebar border-left bg-white">
                <header class="sidebar-header d-sm-none">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#" onclick="Looper.toggleSidebar()">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Back</a>
                            </li>
                        </ol>
                    </nav>
                </header>
                <div class="sidebar-section">
                    {{-- <h3 class="section-title"> I'm a sidebar </h3> --}}
                </div>
            </div>
        </div>
    </div>
@endsection