<?php

class Lego {

    private static $observer;

    public static function init()
    {
        self::$observer = new LegoPHP_Observer();
    }

    public static function load($class)
    {

    }

    public static function getObserver()
    {
        return self::$observer;
    }
}