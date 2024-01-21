<?php
require_once 'SessionController.php';
class BoardController extends SessionController
{

    public function call()
    {
        $this->render('board');
    }
}