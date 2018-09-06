@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page has-sidebar">
            <div class="sidebar-backdrop"></div>
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i> Dashboard
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">
                                    Settings
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="{{ route("batches.index") }}">
                                    Batches
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="{{ route("batches.show", $batch) }}">
                                    {{ $batch->number }}
                                </a>
                            </li>
                            <li class="breadcrumb-item active">
                                Edit
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title"> Edit batch </h1>
                </header>

                <div class="page-section">
                    <div class="section-block">
                        <div class="d-xl-none">
                            <button class="btn btn-danger btn-floated" type="button" data-toggle="sidebar">
                                <i class="fa fa-th-list"></i>
                            </button>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <form action="{{ route("batches.update", $batch) }}"
                                  method="post"
                                  class="card"
                            >
                                @csrf
                                @method("put")
                                <header class="card-header border-bottom-0">
                                    Edit batch
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="number">Number</label>
                                            <input type="text"
                                                   name="number"
                                                   id="number"
                                                   class="form-control {{ $errors->has('number') ? 'is-invalid' : '' }}"
                                                   value="{{ old("number", $batch->number) }}"
                                                   placeholder="JKTR-182"
                                            >
                                            @if ($errors->has('number'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('number') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="max_count">Maximum number of farmers</label>
                                            <input type="number"
                                                   name="max_count"
                                                   id="max_count"
                                                   class="form-control {{ $errors->has('max_count') ? 'is-invalid' : '' }}"
                                                   value="{{ old("max_count", $batch->max_count) }}"
                                            >
                                            @if ($errors->has('max_count'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('max_count') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="valid_from">Valid from</label>
                                            <input type="date"
                                                   name="valid_from"
                                                   id="valid_from"
                                                   class="form-control {{ $errors->has('valid_from') ? 'is-invalid' : '' }}"
                                                   value="{{ old("valid_from", date('Y-m-d',strtotime($batch->valid_from))) }}"
                                            >
                                            @if ($errors->has('valid_from'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('valid_from') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="valid_till">Valid till</label>
                                            <input type="date"
                                                   name="valid_till"
                                                   id="valid_till"
                                                   class="form-control {{ $errors->has('valid_till') ? 'is-invalid' : '' }}"
                                                   value="{{ old("valid_till",date('Y-m-d',strtotime($batch->valid_till)))  }}"
                                            >
                                            @if ($errors->has('valid_till'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('valid_till') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="block_id">Group name</label>
                                            <select 
                                                name="group_id" 
                                                id="group_id" 
                                                class="form-control {{ $errors->has('group_id') ? 'is-invalid' : '' }}"
                                            >
                                                <option value="">Choose group...</option>
                                                @foreach(\App\Group::get() as $group)
                                                <option 
                                                    value="{{ $group->id}}"
                                                    {{ old("block_id", $batch->group_id) == $group->id ? "selected" : "" }}
                                                >
                                                    {{ $group->name }}
                                                </option>
                                                @endforeach
                                            </select>
                                            @if ($errors->has('group_id'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('group_id') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="block_id">Block number</label>
                                            <select 
                                                name="block_id" 
                                                id="block_id" 
                                                class="form-control {{ $errors->has('block_id') ? 'is-invalid' : '' }}"
                                            >
                                                <option value="">Choose block...</option>
                                                @foreach(\App\Block::get() as $block)
                                                <option 
                                                    value="{{ $block->id}}"
                                                    {{ old("block_id", $batch->block_id) == $block->id ? "selected" : "" }}
                                                >
                                                    {{ $block->number }}
                                                </option>
                                                @endforeach
                                            </select>
                                            @if ($errors->has('block_id'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('block_id') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="card-body">
                                    <header class="card-title text-muted">Arrival Information</header>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="expected_arrival_time">Expected time</label>
                                            <input 
                                                type="date" 
                                                name="expected_arrival_time"
                                                id="expected_arrival_time"
                                                class="form-control {{ $errors->has('expected_arrival_time') ? 'is-invalid' : '' }}"
                                                value="{{ old("expected_arrival_time",date('Y-m-d',strtotime($batch->expected_arrival_time)))  }}"
                                            >
                                            @if ($errors->has('expected_arrival_time'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('expected_arrival_time') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="expected_arrival_temperature">Expected temperature</label>
                                            <input 
                                                type="text" 
                                                name="expected_arrival_temperature"
                                                id="expected_arrival_temperature"
                                                class="form-control {{ $errors->has('expected_arrival_temperature') ? 'is-invalid' : '' }}"
                                                placeholder="30&deg;C..."
                                                value="{{ old("expected_arrival_temperature", $batch->expected_arrival_temperature) }}"
                                            >
                                            @if ($errors->has('expected_arrival_temperature'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('expected_arrival_temperature') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="card-body">
                                    <header class="card-title text-muted">Harvest Information</header>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="expected_harvest_time">Expected date</label>
                                            <input 
                                                type="date"
                                                name="expected_harvest_time"
                                                id="expected_harvest_time"
                                                class="form-control {{ $errors->has('expected_harvest_time') ? 'is-invalid' : '' }}"
                                                value="{{ old("expected_harvest_time",date('Y-m-d',strtotime($batch->expected_harvest_time)))  }}"
                                            >
                                            @if ($errors->has('expected_harvest_time'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('expected_harvest_time') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="card-body">
                                    <header class="card-title text-muted">Delivery Information</header>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="expected_delivery_time">Expected time</label>
                                            <input 
                                                type="date" 
                                                name="expected_delivery_time"
                                                id="expected_delivery_time"
                                                class="form-control {{ $errors->has('expected_delivery_time') ? 'is-invalid' : '' }}"
                                                value="{{ old("expected_delivery_time",date('Y-m-d',strtotime($batch->expected_delivery_time)))  }}"
                                            >
                                            @if ($errors->has('expected_delivery_time'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('expected_delivery_time') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="card-body">
                                    <header class="card-title text-muted">Departure Information</header>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="expected_departure_time">Expected time</label>
                                            <input 
                                                type="date" 
                                                name="expected_departure_time"
                                                id="expected_departure_time"
                                                class="form-control {{ $errors->has('expected_departure_time') ? 'is-invalid' : '' }}"
                                                value="{{ old("expected_departure_time",date('Y-m-d',strtotime($batch->expected_departure_time)))  }}"
                                            >
                                            @if ($errors->has('expected_departure_time'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('expected_departure_time') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="description">Description</label>
                                            <textarea 
                                                name="description"
                                                id="description"
                                                class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}"
                                                rows="6"
                                                placeholder="Type something..."
                                            >{{ old("description", $batch->description) }}</textarea>
                                            @if ($errors->has('description'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('description') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <hr>
                                    <button class="btn btn-block btn-primary">Update batch</button>
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
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Back
                                </a>
                            </li>
                        </ol>
                    </nav>
                </header>
                <div class="sidebar-section">
                    {{--<h3 class="section-title"> I'm a sidebar </h3>--}}
                </div>
            </div>
        </div>
    </div>
@endsection