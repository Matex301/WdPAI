<?php
require_once "AppController.php";

abstract class SessionController extends AppController
{
    public function __construct(array $parameters = [])
    {
        parent::__construct($parameters);

        session_start();
        if(!isset($_SESSION['ID'])){
            $url = "http://$_SERVER[HTTP_HOST]";
            header("Location: {$url}/");
            exit(); //TODO
        }

    }
}