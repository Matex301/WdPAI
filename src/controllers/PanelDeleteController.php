<?php
require_once "AdminController.php";
require_once __DIR__ . '/../repository/UsersRepository.php';
class PanelDeleteController extends AdminController
{

    public function call()
    {
        if(!isset($this->routeData['id'])) {
            die('Missing id');
        }

        UsersRepository::delete($this->routeData['id']);
    }
}