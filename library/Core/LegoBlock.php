<?php

abstract class LegoPHP_Block {

    public $parent;
    private $observer;

    public function __construct()
    {
        $this->observer = Lego::getObserver();
    }

    public abstract function getName();
    public abstract function getDesc();
    public abstract function getVer();

    public function throwEvent($name, $payload)
    {
        $this->observer->throw($name, $payload);
    }
}