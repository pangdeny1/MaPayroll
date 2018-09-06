@if($purchase->status === "completed")
    <a href="javascript:void(0)"
       class="dropdown-item"
       onclick="event.preventDefault(); document.getElementById('acceptance-form-{{$purchase->id}}').submit();"
    >
        <i class="far fa-credit-card"></i> Confirm payment
        <form id="acceptance-form-{{$purchase->id}}"
              action="{{ route('purchases.payment_completions.store', $purchase) }}"
              method="POST"
              class="d-none"
        >
            @csrf
            @method("patch")
        </form>
    </a>
@endif