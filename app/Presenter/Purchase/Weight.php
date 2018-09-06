<?php

namespace App\Presenter\Purchase;

use App\Purchase;
use Olifolkerd\Convertor\Convertor;
use Olifolkerd\Convertor\Exceptions\ConvertorDifferentTypeException;
use Olifolkerd\Convertor\Exceptions\ConvertorException;
use Olifolkerd\Convertor\Exceptions\ConvertorInvalidUnitException;

class Weight
{
    protected $purchase;

    public function __construct(Purchase $purchase)
    {
        $this->purchase = $purchase;
    }


    /**
     * @return mixed
     * @throws ConvertorDifferentTypeException
     * @throws ConvertorException
     * @throws ConvertorInvalidUnitException
     */
    public function loss_in_kg()
    {
        if (! $this->purchase->weight_after){
            return "NIL";
        }

        $difference = $this->purchase->weight_before - $this->purchase->weight_after;

        $weight = $this->covertToKg($difference);

        return sprintf("%s Kg", number_format($weight, 2));
    }

    /**
     * @return mixed
     * @throws ConvertorDifferentTypeException
     * @throws ConvertorException
     * @throws ConvertorInvalidUnitException
     */
    public function field_in_kg()
    {
        if (! $this->purchase->field_weight){
            return "NIL";
        }

        $weight = $this->covertToKg($this->purchase->field_weight);

        return sprintf("%s Kg", number_format($weight, 2));
    }

    /**
     * @return mixed
     * @throws ConvertorDifferentTypeException
     * @throws ConvertorException
     * @throws ConvertorInvalidUnitException
     */
    public function before_in_kg()
    {
        if (! $this->purchase->weight_before){
            return "NIL";
        }

        $weight = $this->covertToKg($this->purchase->weight_before);

        return sprintf("%s Kg", number_format($weight, 2));
    }

    /**
     * @return mixed
     * @throws ConvertorDifferentTypeException
     * @throws ConvertorException
     * @throws ConvertorInvalidUnitException
     */
    public function after_in_kg()
    {
        if (! $this->purchase->weight_after){
            return "NIL";
        }

        $weight = $this->covertToKg($this->purchase->weight_after);

        return sprintf("%s Kg", number_format($weight, 2));
    }

    /**
     * @param $weight
     * @return mixed
     * @throws ConvertorDifferentTypeException
     * @throws ConvertorException
     * @throws ConvertorInvalidUnitException
     */
    protected function covertToKg($weight)
    {
        return (new Convertor($weight, $this->purchase->weight_unit))->to("kg");
    }

    public function __get($property)
    {
        if (method_exists($this, $property))  {
            return $this->{$property}();
        }

        return $this->entity->{$property};
    }
}