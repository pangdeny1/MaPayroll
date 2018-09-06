<nav class="page-navs">
    <!-- .nav-scroller -->
    <div class="nav-scroller">
        <!-- .nav -->
        <div class="nav nav-center nav-tabs">
            <a class="nav-link" href="{{ route("farmers.show", $farmer) }}">
                Overview
            </a>
            <a class="nav-link" href="{{ route("farmers.farms.index", $farmer) }}">
                Farmland blocks
                <span class="badge">{{ $farmer->farms->count() }}</span>
            </a>
            <a class="nav-link" href="{{ route("farmers.household_blocks.index", $farmer) }}">
                Household Blocks
                <span class="badge">{{ $farmer->householdBlocks->count() }}</span>
            </a>
            <a class="nav-link" href="{{ route("farmers.sales.index", $farmer) }}">
                Sales
                <span class="badge">{{ $farmer->sales->count() }}</span>
            </a>
            <a class="nav-link" href="{{ route("farmers.batches.index", $farmer) }}">
                Batches
                <span class="badge">{{ $farmer->batches->count() }}</span>
            </a>
            <a class="nav-link" href="{{ route("farmers.harvests.index", $farmer) }}">
                Harvests
                <span class="badge">{{ $farmer->harvests->count() }}</span>
            </a>
            <a class="nav-link" href="{{ route("farmers.settings.index", $farmer) }}">
                Settings
            </a>
        </div>
        <!-- /.nav -->
    </div>
</nav>