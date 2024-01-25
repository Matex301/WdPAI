<?php

require_once 'Controller.php';
require_once __DIR__ . '/../repository/SubclassesRepository.php';
class SubclassesController extends Controller
{

    public function call()
    {
        if(!isset($this->routeData['id'])) {
            die('Missing id');
        }

        $subclasses = SubclassesRepository::getAllByClass($this->routeData['id']);

        die(json_encode($subclasses));
    }
}