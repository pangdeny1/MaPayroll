<table class="table table-sm table-bordered mb-4">
    <tbody>
        <tr>
            <th width="12.5%">Farm</th>
            <td width="12.5%" class="text-right">
                {{ optional($batch->group)->name }}
            </td>
            <th width="12.5%">Variety</th>
            <td width="12.5%" class="text-right">
                08
            </td>
            <th width="12.5%">Time depart</th>
            <td width="12.5%" class="text-right">
                {{ $batch->expected_departure_time->toFormattedDateString() }}
            </td>
            <th width="12.5%">No. Crates</th>
            <td width="12.5%" class="text-right">
                {{ $batch->purchases->sum("crates_count") }}
            </td>
        </tr>
        <tr>
            <th width="12.5%">Produce</th>
            <td width="12.5%" class="text-right">
                {{ $batch->purchases()->distinct('product_id')->count('product_id') }}
            </td>
            <th width="12.5%">Harvest date</th>
            <td width="12.5%" class="text-right">
                {{ $batch->expected_harvest_time->toFormattedDateString() }}
            </td>
            <th width="12.5%">Farm weight</th>
            <td width="12.5%" class="text-right">
                {{ $batch->purchases->sum("field_weight") }}Kg.
            </td>
            <th width="12.5%">Arrival temp.</th>
            <td width="12.5%" class="text-right">
                {{ $batch->expected_arrival_temperature }}&deg;C
            </td>
        </tr>
        <tr>
            <th width="12.5%">Block #</th>
            <td width="12.5%" class="text-right">
                {{ $batch->block->number }}
            </td>
            <th width="12.5%">Delivery date</th>
            <td width="12.5%" class="text-right">
                {{ $batch->expected_delivery_time->toFormattedDateString() }}
            </td>
            <th width="12.5%">P/H weight</th>
            <td width="12.5%" class="text-right">
                {{ $batch->purchases->sum("weight_before") }}Kg.
            </td>
            <th width="12.5%">Arrival time</th>
            <td width="12.5%" class="text-right">
                {{ $batch->expected_arrival_time->toFormattedDateString() }}
            </td>
        </tr>
    </tbody>
</table>

<table class="table table-sm table-bordered">
    <thead>
        <tr>
            <th class="text-left"  nowrap>Household code</th>
            <th class="text-right"  nowrap>No. Crates</th>
            <th class="text-right"  nowrap>Farm weight</th>
            <th class="text-right"  nowrap>P/H weight</th>
            <th class="text-right"  nowrap>Graded weight</th>
            <th class="text-right"  nowrap>Rejected weight</th>
            <th class="text-right" nowrap>Rejected %</th>
        </tr>
    </thead>
    <tbody>
        @forelse($batch->purchases as $purchase)
        <tr>
            <td nowrap>{{ optional($purchase->household)->number }}</td>
            <td nowrap class="text-right">{{ $purchase->crates_count }}</td>
            <td nowrap class="text-right">{{ $purchase->weight()->field_in_kg }}</td>
            <td nowrap class="text-right">
                @if($purchase->weight_before)
                    {{ $purchase->weight()->before_in_kg }}
                @else
                    NIL
                @endif
            </td>
            <td nowrap class="text-right">
                @if($purchase->weight_before)
                    {{ $purchase->weight()->after_in_kg }}
                @else
                    NIL
                @endif
            </td>
            <td nowrap class="text-right">
                {{ $purchase->weight()->loss_in_kg }}
            </td>
            <td nowrap class="text-right"> 
                @if(empty($purchase->weight_before) || empty($purchase->weight_after))
                0
                @else
                {{ number_format(($purchase->weight_before - $purchase->weight_after)/$purchase->weight_before,2) }}
                @endif %
            </td>
        </tr>
        @empty
            <tr>
                <td colspan="8" class="text-center my-4">
                    <p>No purchase recorded yet</p>
                </td>
            </tr>
        @endforelse
    </tbody>
    <tfoot>
        <tr>
            <th nowrap>Total</th>
            <th nowrap class="text-right">{{ $batch->purchases->sum("crates_count") }}</th>
            <th nowrap class="text-right">{{ number_format($batch->purchases->sum("field_weight"), 2) }} Kg</th>
            <th nowrap class="text-right">{{ number_format($batch->purchases->sum("weight_before"), 2) }} Kg</th>
            <th nowrap class="text-right">{{ number_format($batch->purchases->sum("weight_after"), 2) }} Kg</th>
            <th nowrap class="text-right">{{ number_format($batch->purchases->sum("weight_before")-$batch->purchases->sum("weight_after"), 2) }}  kg</th>
            <th nowrap class="text-right"></th>
        </tr>
    </tfoot>
</table>

