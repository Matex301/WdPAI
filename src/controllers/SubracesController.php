<?php

require_once 'AppController.php';
require_once __DIR__ . '/../repository/SubracesRepository.php';
class SubracesController extends AppController
{
    public function call()
    {
        if(!isset($this->routeData['id'])) {
            die('Wrong id');
        }

        $subracesRepository = new SubracesRepository();
        $subraces = $subracesRepository->getAllAndDescriptionByRace($this->routeData['id']);
        for($i = 0; $i < sizeof($subraces); $i++){
            $subraces[$i]['entries'] = json_decode($subraces[$i]['entries']);
        }

        die(json_encode($subraces));
    }
}