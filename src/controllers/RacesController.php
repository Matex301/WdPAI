<?php
require_once 'Controller.php';
require_once __DIR__ . '/../repository/RacesRepository.php';
class RacesController extends Controller
{
    public function call()
    {
        $races = RacesRepository::getAllAndDescription();

        for($i = 0; $i < sizeof($races); $i++){
            $races[$i]['entries'] = json_decode($races[$i]['entries']);
        }

        echo json_encode($races);
        exit();
    }
}