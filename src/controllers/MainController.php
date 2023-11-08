<?php
require_once "SessionController.php";

class MainController extends SessionController {

    public function call(){
        $this->render('main');
    }
}