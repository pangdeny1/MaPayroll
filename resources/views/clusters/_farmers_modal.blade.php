<!-- Button trigger modal -->
<button type="button"
        class="btn btn-sm btn-secondary"
        data-toggle="modal"
        data-target="#farmersModal{{ $cluster->id }}"
>
    Add a member
</button>

<!-- Farmers Modal -->
<div class="modal fade"
     id="farmersModal{{ $cluster->id }}"
     tabindex="-1"
     role="dialog"
     aria-labelledby="farmersModalLabel{{ $cluster->id }}"
     aria-hidden="true"
>
    <div class="modal-dialog modal-dialog-overflow" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title"> Farmers </h6>
            </div>

            <div class="modal-body px-0">
                @foreach(\App\Farmer::query()->whereHas("groups", function($query) use($cluster){
                    return $query->where("groups.id", $cluster->group_id);
                })->whereNotIn("id", $cluster->farmers->pluck("id"))->get() as $farmer)
                    <div class="list-group list-group-flush list-group-divider border">
                        <div class="list-group-item">
                            <!-- .list-group-item-figure -->
                            <div class="list-group-item-figure">
                                <a href="#" class="user-avatar">
                                    <img src="{{ Avatar::create($farmer->full_name)->toBase64() }}"
                                         alt="{{ $farmer->full_name }}"
                                    />
                                </a>
                            </div>

                            <div class="list-group-item-body">
                                <h4 class="list-group-item-title">
                                    <a href="#">{{ $farmer->full_name }}</a>
                                </h4>
                                <p class="list-group-item-text"> {{ $farmer->phone }} </p>
                            </div>

                            <div class="list-group-item-figure">
                                @if($cluster->max_count >= $cluster->farmers->count())
                                <form action="{{ route("clusters.members.store", $cluster) }}" method="post">
                                    @csrf
                                    <input type="hidden" name="farmer_id" value="{{ $farmer->id }}">
                                    <button type="submit" class="btn btn-sm btn-primary">Add</button>
                                </form>
                                @else
                                <button type="submit" class="btn btn-sm btn-secondary">
                                    Batch is full
                                </button>
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