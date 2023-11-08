<?php
require_once "SessionController.php";
class LogoutController extends SessionController
{
    public function call()
    {
        session_destroy();
        session_abort();

        $url = "http://$_SERVER[HTTP_HOST]";
        header("Location: {$url}/start");
    }
}