<div class="dropdown">
    <button type="button" class="btn btn-sm btn-light" data-toggle="dropdown">
        <span>More</span>
        <span class="caret"></span>
    </button>

    <div class="dropdown-arrow dropdown-arrow-right"></div>

    <div class="dropdown-menu dropdown-menu-right">
        @include("purchases.actions.view")
        @include("purchases.actions.edit")
        <div class="dropdown-divider"></div>
        @include("purchases.actions.reject")
        @include("purchases.actions.complete")
        @include("purchases.actions.payment_confirm")
        @include("purchases.actions.remark")
        <div class="dropdown-divider"></div>
        @include("purchases.actions.delete")
    </div>
</div>