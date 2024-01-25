<?php
require_once "Controller.php";
class AdminLoginController extends Controller
{

    public function call()
    {
        $this->render('admin');
    }
}