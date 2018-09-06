@if($purchase->hasStatus("graded"))
    <a href="javascript:void(0)"
       class="dropdown-item"
       onclick="event.preventDefault(); document.getElementById('completionForm{{$purchase->id}}').submit();"
    >
        <i class="fas fa-check-circle"></i> Complete
        <form id="completionForm{{$purchase->id}}"
              action="{{ route('purchases.completions.store', $purchase) }}"
              method="POST"
              class="d-none"
        >
            @csrf
            @method("patch")
        </form>
    </a>
@endif