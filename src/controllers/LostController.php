<?php
require_once "Controller.php";

class LostController extends Controller {

    public function call(){
        http_response_code(404);
        die('error 404');
    }
}