<a href="javascript:void(0)"
   class="dropdown-item"
   onclick="event.preventDefault(); document.getElementById('deletion-form-{{$purchase->id}}').submit();"
>
    <i class="far fa-trash-alt"></i> Delete
    <form id="deletion-form-{{$purchase->id}}"
          action="{{ route('purchases.destroy', $purchase) }}"
          method="POST"
          class="d-none"
    >
        @csrf
        @method("delete")
    </form>
</a>