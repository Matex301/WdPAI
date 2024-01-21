<?php
require_once "Controller.php";

class StartController extends Controller {

    public function call(){

        session_start();
        if(isset($_SESSION['ID'])){
            $this->redirect('board');
        }

        $this->render('start');
    }
}