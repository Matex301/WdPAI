<?php
require_once "appController.php";

class StartController extends AppController {

    public function call(){
        $this->render('start');
    }
}