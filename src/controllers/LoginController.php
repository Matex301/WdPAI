<?php
require_once "AppController.php";
require_once __DIR__ . '/../repository/UserRepository.php';

class LoginController extends AppController {

    public function call(){

        $username = $_POST['username'];
        $password = $_POST['password'];

        $userRepository = new UserRepository();
        $user = $userRepository->getUserByUsername($username);

        if(!$user) {
            die(); //TODO handler
        }

        $hash = $user->getPassword();

        if(!hash_equals(crypt($password, $hash), $hash)){
            die(); //TODO handler
        }

        session_start();
        $_SESSION['ID'] = $user->getId();

        $url = "http://$_SERVER[HTTP_HOST]";
        header("Location: {$url}/main");
    }
}