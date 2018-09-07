<!-- Button trigger modal -->
<button class="btn btn-secondary btn-sm"
        data-toggle="modal"
        data-target="#membersModal"
        value="Add Blok"
>
  Add Block  
</button>

<!-- Farmers Modal -->
<div class="modal fade"
     id="membersModal"
     tabindex="-1"
     role="dialog"
     aria-labelledby="membersModalLabel"
     aria-hidden="true"
>
   <div class="modal-dialog modal-dialog-overflow" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title">Block</h6>
                <span data-toggle="tooltip"
                      data-placement="top"
                      title="block"
                >
                    <i class="fas fa-info-circle"></i>
                </span>
            </div>

            <div class="modal-body px-0">
                
                    <form action="{{ route("blocks.store") }}" method="post">
                                    @csrf
                                    <div class="card border-0">
                                        <header class="card-header border-bottom-0">
                                            Create a new block
                                        </header>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <label for="number">Block code</label>
                                                    <input type="text"
                                                           name="number"
                                                           id="number"
                                                           class="form-control  {{ $errors->has('number') ? "is-invalid" : "" }}"
                                                           value="{{ old("number") }}"
                                                           placeholder="Block 1253TYI..."
                                                    >
                                                    @if ($errors->has('number'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('number') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>

                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="description">Description</label>
                                                    <textarea name="description"
                                                              id="description"
                                                              class="form-control {{ $errors->has('description') ? "is-invalid" : "" }}"
                                                              rows="6"
                                                              placeholder="Type something..."
                                                    >{{ old("description") }}</textarea>
                                                    @if ($errors->has('description'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('description') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <header class="card-header border-bottom-0">
                                            Location information
                                        </header>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="street">Street address</label>
                                                    <input type="text"
                                                           name="street"
                                                           class="form-control {{ $errors->has('street') ? 'is-invalid' : '' }}"
                                                           id="street"
                                                           value="{{ old("street") }}"
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
                                                    <label for="state">State</label>
                                                    <select name="state"
                                                            class="custom-select d-block w-100"
                                                            id="state"
                                                            required=""
                                                    >
                                                        <option value=""> Choose... </option>
                                                        @foreach($states as $key => $state)
                                                            <option name="{{ $state["name"] }}" {{ old("state") === $state["name"] ? "selected" : "" }}>
                                                                {{ $state["name"] }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    <div class="invalid-feedback"> Please provide a valid state. </div>
                                                </div>
                                            </div>
                                            <hr class="mb-4">
                                            <button type="submit" class="btn btn-primary btn-lg btn-block">
                                                Save changes
                                            </button>
                                        </div>
                                    </div>
                                </form>

                        
            
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>