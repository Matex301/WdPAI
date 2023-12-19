<?php
require_once 'AppController.php';
require_once __DIR__ . '/../repository/BackgroundsRepository.php';
class BackgroundsController extends AppController
{

    public function call()
    {
        $backgroundsRepository = new BackgroundsRepository();
        $backgrounds = $backgroundsRepository->getAllAndDescription();

        for($i = 0; $i < sizeof($backgrounds); $i++){
            $backgrounds[$i]['entries'] = json_decode($backgrounds[$i]['entries']);
        }

        echo json_encode($backgrounds);
        exit();
    }
}