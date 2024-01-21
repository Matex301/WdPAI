<?php
require_once "SessionController.php";
class LogoutController extends SessionController
{
    public function call()
    {
        session_destroy();
        session_abort();

        $this->redirect('');
    }
}