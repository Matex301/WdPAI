<?php
require_once 'Controller.php';
require_once __DIR__ . '/../repository/BackgroundsRepository.php';
class BackgroundsController extends Controller
{

    public function call()
    {
        $backgrounds = BackgroundsRepository::getAllAndDescription();

        for($i = 0; $i < sizeof($backgrounds); $i++){
            $backgrounds[$i]['entries'] = json_decode($backgrounds[$i]['entries']);
        }

        echo json_encode($backgrounds);
        exit();
    }
}