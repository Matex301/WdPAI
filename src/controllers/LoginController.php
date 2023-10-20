<?php
require_once "appController.php";

class LoginController extends AppController {

    public function call(){





        
        $url = "http://$_SERVER[HTTP_HOST]";
        header("Location: {$url}/main");
    }
}