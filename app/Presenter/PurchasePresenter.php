<?php

namespace App\Presenter;


use App\Purchase;
use Olifolkerd\Convertor\Convertor;
use Olifolkerd\Convertor\Exceptions\ConvertorDifferentTypeException;
use Olifolkerd\Convertor\Exceptions\ConvertorException;
use Olifolkerd\Convertor\Exceptions\ConvertorInvalidUnitException;

class PurchasePresenter
{
    protected $purchase;

    protected $weightConventions = [
        "gm"    => 1000,
        "kg"    => 1,
        "ton"   => 0.001,
    ];

    public function __construct(Purchase $purchase)
    {
        $this->purchase = $purchase;
    }

    public function weight_before_in_kg()
    {
        if (! $this->purchase->weight_before_processing) return null;

        try {
            return (new Convertor($this->purchase->weight_before_processing, $this->purchase->weight_unit))->to("kg");
        } catch (ConvertorDifferentTypeException $e) {
            return null;
        } catch (ConvertorException $e) {
            return null;
        } catch (ConvertorInvalidUnitException $e) {
            return null;
        }
    }
}