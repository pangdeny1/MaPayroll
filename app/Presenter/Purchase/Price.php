<?php

namespace App\Presenter\Purchase;

use App\Purchase;

class Price
{
    protected $purchase;

    public function __construct(Purchase $purchase)
    {
        $this->purchase = $purchase;
    }

    public function normalize()
    {
        $unit       = $this->purchase->product->price->unit;

        $unitValue  = $this->purchase->product->price->unit_value;
    }

    public function unit()
    {
        return sprintf(
            "%s/%s",
            number_format($this->purchase->product->price->amount, 2),
            $this->purchase->product->price->unit
        );
    }

    public function amount()
    {
        if (! $this->purchase->amount) {
            return null;
        }

        return sprintf("Tsh. %s", number_format($this->purchase->amount, 2));
    }

    public function __get($property)
    {
        if (method_exists($this, $property))  {
            return $this->{$property}();
        }

        return $this->entity->{$property};
    }
}