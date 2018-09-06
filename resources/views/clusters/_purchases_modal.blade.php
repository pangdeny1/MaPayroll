<button type="button"
        class="btn btn-sm btn-secondary"
        data-toggle="modal"
        data-target="#purchasesModal{{ $cluster->id }}"
>
    {{ $cluster->purchases->count() }} purchases
</button>

<!-- Farmers Modal -->
<div class="modal fade"
     id="purchasesModal{{ $cluster->id }}"
     tabindex="-1"
     role="dialog"
     aria-labelledby="purchasesModalLabel{{ $cluster->id }}"
     aria-hidden="true"
>
    <div class="modal-dialog modal-dialog-overflow" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title">Batch number {{ $cluster->number }} purchases</h6>
                <span data-toggle="tooltip"
                      data-placement="top"
                      title="{{ $cluster->description }}"
                >
                    <i class="fas fa-info-circle"></i>
                </span>
            </div>

            <div class="modal-body px-0">
                @foreach($cluster->harvests as $harvest)
                    <div class="list-group list-group-flush list-group-divider border">
                        <div class="list-group-item">
                            <div class="list-group-item-figure">
                                <a href="#" class="user-avatar">
                                    <img src="{{ Avatar::create($harvest->farmer->full_name)->toBase64() }}"
                                         alt="{{ $harvest->farmer->full_name }}"
                                    />
                                </a>
                            </div>

                            <div class="list-group-item-body">
                                <h4 class="list-group-item-title">
                                    <a href="#">{{ $harvest->farmer->full_name }}</a>
                                </h4>
                                <div class="list-group-item-text">
                                    {{ $harvest->block->number }} - 
                                </div>
                            </div>

                            <div class="list-group-item-figure">
                                @if(! $harvest->isPurchased($cluster))
                                <form action="{{ route("purchases.store") }}"
                                      method="post"
                                      class="d-flex"
                                >
                                    @csrf
                                    <div class="input-group input-group-alt input-group-sm">
                                        <div class="input-group-prepend">
                                            <select class="custom-select"
                                                    name="weight_unit">
                                                <option value="">Weight</option>
                                                <option value="kg" selected>Kg.</option>
                                            </select>
                                        </div>
                                        <input type="number"
                                               name="field_weight"
                                               id="field_weight"
                                               class="form-control form-control-sm"
                                               placeholder="Weight..."
                                               style="max-width: 100px;"
                                        >
                                    </div>
                                    <input type="hidden" name="farmer_id" value="{{ $harvest->farmer_id }}">
                                    <input type="hidden" name="batch_id" value="{{ $harvest->batch_id }}">
                                    <button type="submit" class="btn btn-sm btn-primary ml-1">Save</button>
                                </form>
                                @else
                                    <button type="button" class="btn btn-sm btn-secondary">Purchased</button>
                                @endif
                            </div>

                        </div>
                    </div>
                @endforeach
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

