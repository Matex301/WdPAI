<?php
require_once "Controller.php";

abstract class SessionController extends Controller
{
    public function __construct(array $parameters = [])
    {
        parent::__construct($parameters);

        session_start();
        if(!isset($_SESSION['ID'])){
            $this->redirect('');
        }

    }

    protected function getId() {
        return $_SESSION['ID'];
    }
}