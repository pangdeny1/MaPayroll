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
                                <a href="">
                                    deduction type
                                </a>
                            </li>
                           
                        </ol>
                    </nav>
                    <h1 class="page-title"> Edit deductiontype </h1>
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
                            <form action="{{url('updatdeductiontype/'.$deductiontype->id)}}"
                                  method="post"
                                  class="card"
                            >
                                @csrf
                                <header class="card-header border-bottom-0">
                                     deduction type ({{ $deductiontype->othincdesc }})
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="name">Name</label>
                                            <input type="text"
                                                   name="name"
                                                   id="name"
                                                   class="form-control" value="{{ $deductiontype->othincdesc }}"
                                                   placeholder="deduction">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="description">Description</label>
                                            <textarea name="description"
                                                      id="description"
                                                      class="form-control"
                                                      rows="6"
                                                      placeholder="Type something..."
                                            >{{ old("description",$deductiontype->deductiondesc) }}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <header class="card-header border-bottom-0">
                                    Tax information
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="taxable">Taxable </label>
                                           <select name="taxable"
                                                    id="taxable"
                                                    class="form-control {{ $errors->has('taxable') ? "is-invalid" : "" }}"
                                            >
                                                 @if($deductiontype->taxable=="taxable")
                                                 <option selected="selected" value="taxable">Taxable</option>
                                                 <option value="non-taxable">Non Taxable</option>
                                                 
                                                @else
                                                 <option value="taxable">Taxable</option>
                                                 <option selected="selected"  value="non-taxable">Non Taxable</option>
                                                @endif
                                            </select>
                                            @if ($errors->has('taxable'))
                                            <span class="invalid-feedback">
                                                <strong>{{ $errors->first('taxable') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <hr>
                                    <button class="btn btn-block btn-primary">
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