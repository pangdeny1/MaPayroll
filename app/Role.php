<?php

namespace App;

use OwenIt\Auditing\Contracts\Auditable;

class Role extends \Silber\Bouncer\Database\Role implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $appends = ["placeholder", "color"];

    public function getColorAttribute()
    {
        return array_random(["primary", "yellow", "purple", "red", "success", "danger"]);
    }

    public function getPlaceholderAttribute()
    {
        if ($this->hasMultipleWords($this->attributes["title"])) {
            $words = $this->getWords();

            return $this->makePlaceholder($words);
        }

        return $this->makePlaceholder($this->attributes["title"]);
    }

    public function hasMultipleWords($title)
    {
        $words = explode(" ", $title);

        return count($words) > 1;
    }

    private function getFirstLetter($word)
    {
        return $word[0];
    }

    public function getWords()
    {
        return explode(" ", $this->attributes["title"]);
    }

    public function makePlaceholder($words)
    {
        if (is_array($words)) {
            return strtoupper($this->getFirstLetter($words[0]) . "" . $this->getFirstLetter($words[1]));
        }

        return strtoupper($words[0] ."". $words[1]);
    }
}