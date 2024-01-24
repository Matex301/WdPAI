<?php
require_once 'Controller.php';
require_once __DIR__ . '/../repository/BackgroundsRepository.php';
class BackgroundsController extends Controller
{

    public function call()
    {
        $backgrounds = BackgroundsRepository::getAllAndDescription();

        echo json_encode($backgrounds);
        exit();
    }
}