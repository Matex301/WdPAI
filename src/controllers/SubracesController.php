<?php

require_once 'Controller.php';
require_once __DIR__ . '/../repository/SubracesRepository.php';
class SubracesController extends Controller
{
    public function call()
    {
        if(!isset($this->routeData['id'])) {
            die('Wrong id');
        }

        $subraces = SubracesRepository::getAllAndDescriptionByRace($this->routeData['id']);

        die(json_encode($subraces));
    }
}