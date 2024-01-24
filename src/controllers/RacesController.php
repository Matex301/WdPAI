<?php
require_once 'Controller.php';
require_once __DIR__ . '/../repository/RacesRepository.php';
class RacesController extends Controller
{
    public function call()
    {
        $races = RacesRepository::getAllAndDescription();

        echo json_encode($races);
        exit();
    }
}