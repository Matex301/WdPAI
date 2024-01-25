<?php
require_once "AdminController.php";
require_once __DIR__ . '/../repository/UsersRepository.php';
class PanelPostController extends AdminController
{

    public function call()
    {
        $users = UsersRepository::getAll();
        echo json_encode($users);
        exit();
    }
}