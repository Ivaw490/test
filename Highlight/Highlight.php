<?php
/**
 * Created by PhpStorm.
 * User: Ivan
 * Date: 09.08.2019
 * Time: 15:04
 */

class Highlight{
    private $regx = "/(^|\s)(@[a-zA-Z][[\da-zA-Z]+)($|\s)/"; //шаблон для поиска
    private $replacement = '${1}<b>${2}</b>${3}'; // шаблон для замены

    protected function getRegx(){
        return $this->regx;
    }

    protected function getReplacement(){
        return $this->replacement;
    }

    public function highlightNicknames($str){
        return preg_replace($this->getRegx(), $this->getReplacement(), $str);
    }
}