<?php

define('DS', '/');

require 'Core' . DS . 'Lego.php';

class LegoPHP_BootStrap {

    public function __construct() {
        spl_autoload_register(array('LegoPHP_Core', 'init'));
    }

    public function route()
    {

    }
}

$LegoPHP = new LegoPHP_BootStrap();
$LegoPHP->route();