<?php
require_once "AdminController.php";
class PanelController extends AdminController
{

    public function call()
    {
        $this->render('panel');
    }
}