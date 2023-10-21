<?php
require_once "appController.php";
require_once __DIR__ . '/../repository/UserRepository.php';

class LoginController extends AppController {

    public function call(){

        $username = $_POST['username'];
        $password = $_POST['password'];

        $userRepository = new UserRepository();
        $user = $userRepository->getUserByUsername($username);

        if(!$user) {
            die(); //TODO
        }

        if($user->getPassword() != $password){
            die(); //TODO
        }


        $url = "http://$_SERVER[HTTP_HOST]";
        header("Location: {$url}/main");
    }
}