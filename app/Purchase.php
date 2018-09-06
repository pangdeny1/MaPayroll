<?php

namespace App;

use App\Presenter\Purchase\Price;
use App\Presenter\Purchase\Weight;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class Purchase extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $guarded = [];

    public function harvest()
    {
        return $this->belongsTo(Harvest::class);
    }

    public function batch()
    {
        return $this->belongsTo(Batch::class);
    }

    public function block()
    {
        return $this->belongsTo(Block::class);
    }

     public function household()
    {
        return $this->belongsTo(HouseholdBlock::class,"block_id");
    }

    public function deliveryNote()
    {
        return $this->belongsTo(DeliveryNote::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function farmer()
    {
        return $this->belongsTo(Farmer::class);
    }

    public function remarks()
    {
        return $this->morphMany(Remark::class, "remarkable");
    }

    public function remark()
    {
        return $this->morphOne(Remark::class, "remarkable");
    }

    public function weight()
    {
        return new Weight($this);
    }

    public function price()
    {
        return new Price($this);
    }

    public function hasAnyStatus(array $statuses)
    {
        foreach ($statuses as $status) {
            if ($this->status === $status){
                return true;
                break;
            }
        }

        return false;
    }

    public function hasStatus($name)
    {
        if ($this->status === $name){
            return true;
        }

        return false;
    }

    public function isProcessed()
    {
        return !is_null($this->attributes["amount"]) && !is_null($this->attributes["weight_after"]);
    }
}
