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
                            <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Purchases</a>
                        </li>
                    </ol>
                </nav>
                <h1 class="page-title">Record a new product purchase</h1>
            </header>
            <!-- /.page-title-bar -->
            <!-- .page-section -->
            <div class="page-section">
                <div class="row">
                    <div class="col-md-12">
                        <form action="{{ route("purchases.store") }}"
                                method="post"
                        >
                            @csrf
                            <div class="card border-0">
                                <header class="card-header border-bottom-0">
                                    Basic information
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="delivery_note_number">Delivery note number</label>
                                            <input type="text" 
                                                   name="delivery_note_number" 
                                                   id="delivery_note_number" 
                                                   class="form-control"
                                                   value="{{ \App\DeliveryNote::number() }}"
                                            >
                                        </div>
                                    </div>
                                    <farmer-block-picker inline-template>
                                        <section>
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <label for="farmer">Farmer</label>
                                                    <select name="farmer_id"
                                                            id="farmer"
                                                            class="form-control {{ $errors->has("farmer_id") ? "is-invalid" : "" }}"
                                                            v-model="farmer"
                                                    >
                                                        <option value="">-- Select farmer --</option>
                                                        @foreach($farmers as $farmer)
                                                            <option value="{{ $farmer->id }}" {{ old("farmer_id") == $farmer->id ? "selected" : "" }}>
                                                                {{ $farmer->full_name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @if($errors->has("farmer_id"))
                                                        <span class="invalid-feedback">
                                                            {{ $errors->first("farmer_id") }}
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <label for="block_id">Block</label>
                                                    <select name="block_id"
                                                            id="block_id"
                                                            class="form-control {{ $errors->has("block_id") ? "is-invalid" : "" }}"
                                                            :disabled="! hasBlock"
                                                    >
                                                        <option value="">-- Select block number --</option>
                                                        <option v-for="block in blocks"
                                                                :key="block.id"
                                                                :value="block.id"
                                                        >@{{ block.number }}</option>

                                                    </select>
                                                    @if($errors->has("block_id"))
                                                        <span class="invalid-feedback">
                                                            {{ $errors->first("block_id") }}
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>
                                        </section>
                                    </farmer-block-picker>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="harvest_date">Harvest date</label>
                                            <input type="date" 
                                                   name="harvest_date" 
                                                   id="harvest_date" 
                                                   class="form-control"
                                            >
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <header class="card-header border-bottom-0">
                                    Weight information
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-3">
                                            <label for="weight_unit">Unit</label>
                                            <select name="weight_unit"
                                                    id="weight_unit"
                                                    class="form-control {{ $errors->has("weight_unit") ? "is-invalid" : "" }}"
                                            >
                                                <option value="">--Select unit --</option>
                                                <option value="kg" selected>Kilogram</option>
                                                <option value="g">Gram</option>
                                                <option value="mg">Miligram</option>
                                                <option value="lb">Pound</option>
                                                <option value="oz">Ounce</option>
                                                <option value="t">Metric Tonne</option>
                                                <option value="ukt">UK Long Ton</option>
                                                <option value="ust">US short Ton</option>
                                                <option value="st">Stone</option>
                                            </select>
                                            @if($errors->has("weight_unit"))
                                                <span class="invalid-feedback">
                                                    {{ $errors->first("weight_unit") }}
                                                </span>
                                            @endif
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="field_weight">Farm weight</label>
                                            <input type="text"
                                                   name="field_weight"
                                                   id="field_weight"
                                                   class="form-control {{ $errors->has("field_weight") ? "is-invalid" : "" }}"
                                                   value="{{ old("field_weight") }}"
                                            >
                                        </div>
                                    </div>


                                    @if($errors->has("field_weight"))
                                        <div class="alert alert-danger">
                                            <p>{{ $errors->first("field_weight") }}</p>
                                        </div>
                                    @endif

                                </div>
                                <hr>
                                <div class="card-body">

                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="remarks">Remarks</label>
                                            <textarea name="remarks"
                                                      id="remarks"
                                                      class="form-control {{ $errors->has('remarks') ? "is-invalid" : "" }}"
                                                      rows="6"
                                                      placeholder="Type something..."
                                            >{{ old("remarks") }}</textarea>
                                            @if ($errors->has('remarks'))
                                                <span class="invalid-feedback">
                                                <strong>{{ $errors->first('remarks') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <hr>
                                    <button class="btn btn-primary btn-lg btn-block" type="submit">
                                        Save changes
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.page-section -->
        </div>
        <!-- /.page-inner -->
        <!-- .page-sidebar -->
        <div class="page-sidebar border-left bg-white">
            <!-- .sidebar-header -->
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
            <!-- /.sidebar-header -->
            <!-- .sidebar-section -->
            <div class="sidebar-section">
                {{-- <h3 class="section-title"> I'm a sidebar </h3> --}}
            </div>
            <!-- /.sidebar-section -->
        </div>
        <!-- /.page-sidebar -->
    </div>
    <!-- /.page -->
</div>
<!-- /.wrapper -->
@endsection