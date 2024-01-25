<?php
require_once "Controller.php";
abstract class AdminController extends Controller
{
    public function __construct(array $parameters = [])
    {
        parent::__construct($parameters);

        session_start();
        if(!isset($_SESSION['ADMIN'])){
            $this->redirect('');
        }

    }

    protected function getAdmin() {
        return $_SESSION['ADMIN'];
    }
}