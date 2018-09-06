@if($purchase->weight_before)
    {{ $purchase->weight()->before_in_kg }}
@else
    @can('packing_house_weight_create', \App\Purchase::class)
    <!-- Button -->
    <a href="#"
       class="btn btn-sm btn-secondary"
       data-toggle="modal"
       data-target="#packingHouseWeightModal{{ $purchase->id }}">
        <span class="fas fa-plus mr-1"></span> Record
    </a>
    <!-- Modal -->
    <div class="modal fade"
         id="packingHouseWeightModal{{ $purchase->id }}"
         tabindex="-1"
         role="dialog"
         aria-labelledby="packingHouseWeightModalLabel{{ $purchase->id }}"
         aria-hidden="true"
    >
        <div class="modal-dialog modal-dialog-overflow" role="document">
            <div class="modal-content">
                <form action="{{ route("packing_house_weight.record", $purchase) }}" method="post">
                    @csrf
                    @method("PATCH")
                    <header class="modal-header">
                        <h6 class="modal-title">
                            Record packing house weight
                        </h6>
                    </header>
                    <div class="modal-body">
                        <table class="table table-borderless">
                            <tr>
                                <th>Farmer</th>
                                <td>{{ $purchase->farmer->full_name }}</td>
                            </tr>
                            <tr>
                                <th>Product</th>
                                <td>{{ $purchase->product->name }}</td>
                            </tr>
                            <tr>
                                <th>Batch number</th>
                                <td>{{ optional($purchase->batch)->number }}</td>
                            </tr>
                            <tr>
                                <th>Farm weight</th>
                                <td>{{ $purchase->weight()->field_in_kg }}</td>
                            </tr>
                            <tr>
                                <th class="align-middle">Packing house weight</th>
                                <td class="align-middle">
                                    <div class="input-group input-group-sm input-group-alt">
                                        <input type="text"
                                               name="weight_before"
                                               class="form-control form-control-sm"
                                               id="weight_before"
                                        >
                                        <div class="input-group-append">
                                            <select class="custom-select">
                                                <option value="">Choose...</option>
                                                <option value="kg" selected="">Kilogram (Kg)</option>
                                            </select>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer d-flex justify-content-between">
                        <button type="submit" class="btn btn-light" data-dismiss="modal">
                            Close
                        </button>
                        <button type="submit" class="btn btn-primary">
                            Save changes
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    @endcan
@endif