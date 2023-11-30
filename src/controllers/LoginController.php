<?php
require_once "AppController.php";
require_once __DIR__ . '/../repository/UserRepository.php';

class LoginController extends AppController {

    public function call(){

        if(!(isset($_POST['username']) && isset($_POST['password']))){
            $this->render("start");
            exit();
        }

        $username = $_POST['username'];
        $password = $_POST['password'];

        $userRepository = new UserRepository();
        $user = $userRepository->getUserByUsername($username);

        if(!$user) {
            $this->render("start", ['$loginMessage' => "Invalid username"]);
            exit();
        }

        $hash = $user->getPassword();

        if(!hash_equals(crypt($password, $hash), $hash)){
            $this->render("start", ['$loginMessage' => "Invalid password"]);
            exit();
        }

        session_start();
        $_SESSION['ID'] = $user->getId();

        $url = "http://$_SERVER[HTTP_HOST]";
        header("Location: {$url}/main");
    }
}