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
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Farmlands
                                </a>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title"> Edit Farmland Block</h1>
                </header>
                <div class="page-section">
                    <div class="row">
                        <div class="col-md-12">

                            <form action="{{ route("farmers.farms.update", $farm) }}"
                                  method="post"
                                  class="card border-0"
                            >
                                @csrf
                                <header class="card-header border-bottom-0">
                                    Farmer: 
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="col-md-2 mb-3">
                                            <label for="size">Size</label>
                                            <input type="text"
                                                   name="size"
                                                   class="form-control {{ $errors->has('size') ? 'is-invalid' : '' }}"
                                                   id="size"
                                                   value="{{ old("size",$farm->size )}}"
                                            >
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="size_unit">Unit</label>
                                            <select name="size_unit"
                                                    class="custom-select d-block w-100 {{ $errors->has('size_unit') ? 'is-invalid' : '' }}"
                                                    id="size_unit"
                                            >
                                                <option value="Hectare">Hectare </option>
                                            </select>
                                            @if ($errors->has('size_unit'))
                                                <span class="invalid-feedback">
                                                <strong>{{ $errors->first('size_unit') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                   

                                     <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="block">Block Code</label>
                                                    <select name="block_id"
                                                            id="block"
                                                            class="form-control {{ $errors->has('block_id') ? "is-invalid" : "" }}"
                                                    >
                                                        <option value="">Select Block...</option>
                                                        @foreach($blocks as $block)
                                                            <option value="{{ $block->id }}"
                                                                    @if(old("block_id", $farm->block_id) == $block->id) selected @endif
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
                                                               @can("create", \App\Block::class)
                            <a href="{{ route("blocks.create") }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                Add a new block code
                            </a>
                            @endcan
                                     
                                            </div>
                                   <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="country">Country</label>
                                                    <select name="country"
                                                            class="custom-select d-block w-100"
                                                            id="country"
                                                    >
                                                        <option value="Tanzania">Tanzania</option>
                                                    </select>
                                                    <div class="invalid-feedback"> Please select a valid country. </div>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="state">Region</label>
                                                    <select name="state"
                                                            class="custom-select d-block w-100"
                                                            id="state"
                                                            required=""
                                                    >
                                                        <option value=""> Choose... </option>
                                                      

                                                        @foreach($states as $key => $state)
                                                    <option name="{{ $state["name"] }}" {{ old("state", optional($block->address)->state) === $state["name"] ? "selected" : "" }}>
                                                        {{ $state["name"] }}
                                                    </option>
                                                @endforeach
                                                    </select>
                                                    <div class="invalid-feedback"> Please provide a valid state. </div>
                                                </div>
                                            </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="description">Description</label>
                                            <textarea class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}"
                                                      name="description"
                                                      id="description"
                                                      placeholder="Type something...."
                                                      rows="5"
                                            >{{ old("description",$farm->description) }}</textarea>
                                            @if ($errors->has('description'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('description') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <hr class="mb-4">
                                    <div class="form-row">
                                        <button class="btn btn-primary btn-lg btn-block" type="submit">
                                            Save changes
                                        </button>
                                    </div>
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