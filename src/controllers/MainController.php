<?php
require_once "appController.php";

class MainController extends AppController {

    public function call(){
        $this->render('main');
    }
}