<?php
require_once "Controller.php";
class AdminLoginController extends Controller
{

    public function call()
    {
        session_start();
        if(isset($_SESSION['ADMIN'])){
            $this->redirect('panel');
        }

        $this->render('admin');
    }
}