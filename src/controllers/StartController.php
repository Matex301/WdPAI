<?php
require_once "AppController.php";

class StartController extends AppController {

    public function call(){
        $this->render('start');
    }
}