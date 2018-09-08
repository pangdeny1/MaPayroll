<nav class="page-navs">
    <!-- .nav-scroller -->
    <div class="nav-scroller">
        <!-- .nav -->
        <div class="nav nav-center nav-tabs">
            <a class="nav-link" href="{{ route("farmers.show", $employee) }}">
                Overview
            </a>
            <a class="nav-link" href="{{ route("farmers.farms.index", $employee) }}">
                Farmland blocks
                <span class="badge"></span>
            </a>
            <a class="nav-link" href="{{ route("farmers.household_blocks.index", $employee) }}">
                Household Blocks
                <span class="badge"></span>
            </a>
            <a class="nav-link" href="{{ route("farmers.sales.index", $employee) }}">
                Sales
                <span class="badge"></span>
            </a>
            <a class="nav-link" href="{{ route("farmers.batches.index", $employee) }}">
                Batches
                <span class="badge"></span>
            </a>
            <a class="nav-link" href="{{ route("farmers.harvests.index", $employee) }}">
                Harvests
                <span class="badge"></span>
            </a>
            <a class="nav-link" href="{{ route("farmers.settings.index", $employee) }}">
                Settings
            </a>
        </div>
        <!-- /.nav -->
    </div>
</nav>