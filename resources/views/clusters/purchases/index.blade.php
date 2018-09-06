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
                                <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Produced batch history</a>
                            </li>
                        </ol>
                    </nav>

                    <h3>Produced batch history</h3>
                    <hr class="mb-5">

                    <div class="lead">
                        <span class="font-weight-bold">Raw material details</span>
                    </div>
                </header>

                <div class="card mb-5">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th width="12.5%">Farm</th>
                                <td width="12.5%" class="text-right">
                                    {{ optional($batch->group)->name }}
                                </td>
                                <th width="12.5%">Variety</th>
                                <td width="12.5%" class="text-right">
                                    08
                                </td>
                                <th width="12.5%">Time depart</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->expected_departure_time->toFormattedDateString() }}
                                </td>
                                <th width="12.5%">No. Crates</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->purchases->sum("crates_count") }}
                                </td>
                            </tr>
                            <tr>
                                <th width="12.5%">Produce</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->purchases()->distinct('product_id')->count('product_id') }}
                                </td>
                                <th width="12.5%">Harvest date</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->expected_harvest_time->toFormattedDateString() }}
                                </td>
                                <th width="12.5%">Farm weight</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->purchases->sum("field_weight") }}Kg.
                                </td>
                                <th width="12.5%">Arrival temp.</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->expected_arrival_temperature }}&deg;C
                                </td>
                            </tr>
                            <tr>
                                <th width="12.5%">Block #</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->block->number }}
                                </td>
                                <th width="12.5%">Delivery date</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->expected_delivery_time->toFormattedDateString() }}
                                </td>
                                <th width="12.5%">P/H weight</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->purchases->sum("weight_before") }}Kg.
                                </td>
                                <th width="12.5%">Arrival time</th>
                                <td width="12.5%" class="text-right">
                                    {{ $batch->expected_arrival_time->toFormattedDateString() }}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <header class="page-title-bar">
                    <div class="d-sm-flex align-items-sm-center">
                        <div class="lead mr-sm-auto mb-0">
                            <span class="font-weight-bold">Processing details</span>
                        </div>
                
                        <div class="btn-toolbar">
                            <a href="{{ route("clusters.purchases.export_excel", $batch)}}" class="btn btn-light">
                                <i class="far fa-file-excel"></i>
                                <span class="ml-1">Export as excel</span>
                            </a>

                            <a href="{{ route("clusters.purchases.export_pdf", $batch)}}" class="btn btn-light">
                                <i class="far fa-file-pdf"></i>
                                <span class="ml-1">Export as pdf</span>
                            </a>

                            <a href="{{ route("clusters.purchases.print", $batch)}}" class="btn btn-light">
                                <i class="fas fa-print"></i>
                                <span class="ml-1">Print</span>
                            </a>
                        
                            @can('create', \App\Purchase::class)
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                <span class="fas fa-plus mr-1"></span>
                                New purchase
                            </button>
      
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <form action="{{ route("clusters.purchases.store", $batch) }}" method="post">
                                            @csrf
                                            <div class="modal-header">
                                                <h6 class="modal-title" id="exampleModalLabel">Batch purchase form</h6>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            
                                            <div class="card-body">
                                                <header class="card-title text-muted">Basic information</header>
                                                <div class="form-row">
                                                    <div class="form-group col-md-4">
                                                        <label for="">Group</label>
                                                        <input type="text" class="form-control-plaintext" value="{{ optional($batch->group)->name }}">
                                                    </div>
                                                    <div class="form-group col-md-4">
                                                        <label for="">Block number</label>
                                                        <input type="text" class="form-control-plaintext" value="{{ $batch->block->number }}">
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col-md-4">
                                                        <label for="delivery_note_number">Delivery note number</label>
                                                        <input 
                                                            type="text" 
                                                            name="delivery_note_number" 
                                                            id="delivery_note_number" 
                                                            class="form-control form-control-sm"
                                                            value="{{ \App\DeliveryNote::number() }}"
                                                        >
                                                    </div>
                                                    <div class="form-group col-md-4">
                                                        <label for="harvest_date">Harvest date</label>
                                                        <input 
                                                            type="date" 
                                                            name="harvest_date" 
                                                            id="harvest_date" 
                                                            class="form-control form-control-sm"
                                                        >
                                                    </div>
                                                    <div class="form-group col-md-4">
                                                        <label for="crates_count">Number of crates</label>
                                                        <input 
                                                            type="number" 
                                                            name="crates_count" 
                                                            id="crates_count" 
                                                                class="form-control form-control-sm {{ $errors->has("crates_count") ? "is-invalid" : "" }}"
                                                        >
                                                            @if($errors->has("crates_count"))
                                                                <span class="invalid-feedback">
                                                                    {{ $errors->first("crates_count") }}
                                                                </span>
                                                            @endif
                                                    </div>
                                                </div>
                                                <farmer-block-picker :group-id="{{ $batch->group->id }}" inline-template>
                                                    <section>
                                                        <div class="form-row">
                                                            <div class="form-group col-md-8">
                                                                <label for="farmer">Farmer</label>
                                                                <select name="farmer_id"
                                                                        id="farmer"
                                                                        class="form-control form-control-sm {{ $errors->has("farmer_id") ? "is-invalid" : "" }}"
                                                                        v-model="farmer"
                                                                >
                                                                    

                                                                    @foreach($cluster_farmers as $cluster_farmer)
                                                                    <option value="{{ $cluster_farmer->fid }}" >
                                                                            {{ $cluster_farmer->first_name }} {{ $cluster_farmer->last_name }}
                                                                        </option>
                                                                    @endforeach
                                                                </select>
                                                                @if($errors->has("farmer_id"))
                                                                    <span class="invalid-feedback">
                                                                        {{ $errors->first("farmer_id") }}
                                                                    </span>
                                                                @endif
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label for="block_id">Household Block</label>
                                                                <select name="block_id"
                                                                        id="block_id"
                                                                        class="form-control form-control-sm {{ $errors->has("block_id") ? "is-invalid" : "" }}"
                                                                        v-model="blockId"
                                                                        :disabled="! hasBlock"
                                                                >
                                                                    <option value="">Select block number...</option>
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
                                                        <hr>
                                                        <div class="form-row">
                                                            <div class="form-group col-md-6">
                                                                <label for="">Product</label>
                                                                <input 
                                                                    type="text" 
                                                                    class="form-control-plaintext" 
                                                                    :value="productName"
                                                                >
                                                            </div>
                                                            <div class="form-group col-md-6">
                                                                <label for="">Price</label>
                                                                <input 
                                                                    type="text" 
                                                                    class="form-control-plaintext" 
                                                                    :value="price"
                                                                >
                                                            </div>
                                                        </div>
                                                    </section>
                                                </farmer-block-picker>
                                            
                                                <hr>
                                            
                                                <header class="card-title text-muted">Weight information</header>
                                                <div class="form-row">
                                                    <div class="form-group col-md-5">
                                                        <label for="weight_unit">Unit</label>
                                                        <select name="weight_unit"
                                                                id="weight_unit"
                                                                class="form-control form-control-sm {{ $errors->has("weight_unit") ? "is-invalid" : "" }}"
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
                                                            class="form-control form-control-sm {{ $errors->has("field_weight") ? "is-invalid" : "" }}"
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
                                            
                                            <div class="modal-footer justify-content-between">
                                                <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-sm btn-primary">Save changes</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            @endcan
                        </div>
                    </div>
                </header>

                <div class="page-section">
                    @if (session('status'))
                        <div class="alert alert-success alert-dismissible fade show has-icon">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <div class="alert-icon">
                                <i class="fas fa-info-circle"></i>
                            </div>
                            <strong>Well done!</strong> {{ session('status') }}
                        </div>
                    @endif

                    <section class="card card-fluid">
                        <!-- .table-responsive -->
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="text-left"  nowrap>Household code</th>
                                        <th class="text-left"  nowrap>No. Crates</th>
                                        <th class="text-left"  nowrap>Farm weight</th>
                                        <th class="text-left"  nowrap>P/H weight</th>
                                        <th class="text-left"  nowrap>Graded weight</th>
                                        <th class="text-left"  nowrap>Rejected weight</th>
                                        <th class="text-right" nowrap>Rejected %</th>
                                        <th class="text-left"  nowrap>Quality remarks</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th nowrap>Total</th>
                                        <th nowrap>{{ $batch->purchases->sum("crates_count") }}</th>
                                        <th nowrap>{{ number_format($batch->purchases->sum("field_weight"), 2) }} Kg</th>
                                        <th nowrap>{{ number_format($batch->purchases->sum("weight_before"), 2) }} Kg</th>
                                        <th nowrap>{{ number_format($batch->purchases->sum("weight_after"), 2) }} Kg</th>
                                        <th nowrap>{{ number_format($batch->purchases->sum("weight_before")-$batch->purchases->sum("weight_after"), 2) }}  kg</th>
                                        <th nowrap></th>
                                        <th nowrap></th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    @forelse($batch->purchases as $purchase)
                                    <tr>
                                        <td nowrap>{{ optional($purchase->household)->number }}</td>
                                        <td nowrap>{{ $purchase->crates_count }}</td>
                                        <td nowrap>{{ $purchase->weight()->field_in_kg }}</td>
                                        <td nowrap>
                                                @include("purchases.modals.packing_house_weight")
                                        </td>
                                        <td nowrap>
                                            @if($purchase->weight_before)
                                                @include("purchases.modals.graded_weight")
                                            @else
                                                NIL
                                            @endif
                                        </td>
                                        <td nowrap>
                                            {{ $purchase->weight()->loss_in_kg }}
                                        </td>
                                        <td nowrap> @if(empty($purchase->weight_before) || empty($purchase->weight_after))
                                            0
                                            @else
                                            {{number_format(($purchase->weight_before - $purchase->weight_after)/$purchase->weight_before,2) }}
                                                @endif %</td>
                                        <td nowrap></td>
                                    </tr>
                                    @empty
                                        <tr>
                                            <td colspan="8" class="text-center my-4">
                                                <p>No purchase recorded yet</p>
                                            </td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection