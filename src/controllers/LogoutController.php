<?php
require_once "Controller.php";
class LogoutController extends Controller
{
    public function call()
    {
        session_start();
        session_destroy();
        session_abort();

        $this->redirect('');
    }
}