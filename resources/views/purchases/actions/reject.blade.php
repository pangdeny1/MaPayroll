@if(! $purchase->hasAnyStatus(["completed", "rejected"]) )
<a href="javascript:void(0)"
   class="dropdown-item"
   onclick="event.preventDefault(); document.getElementById('rejectionForm{{$purchase->id}}').submit();"
>
    <i class="far fa-times-circle"></i> Reject
    <form id="rejectionForm{{$purchase->id}}"
          action="{{ route('purchases.rejections.delete', $purchase) }}"
          method="POST"
          class="d-none"
    >
        @csrf
        @method("delete")
    </form>
</a>
@endif