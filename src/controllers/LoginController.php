<?php
require_once "Controller.php";
require_once __DIR__ . '/../repository/UserRepository.php';

class LoginController extends Controller {

    public function call(){

        if(!(isset($_POST['username']) && isset($_POST['password']))){
            $this->render("start");
            exit();
        }

        $username = $_POST['username'];
        $password = $_POST['password'];

        $user = UserRepository::getUserByUsername($username);

        if(!$user) {
            $this->render("start", ['loginMessage' => "Invalid username"]);
            exit();
        }

        $hash = $user->getPassword();

        if(!hash_equals(crypt($password, $hash), $hash)){
            $this->render("start", ['loginMessage' => "Invalid password"]);
            exit();
        }

        session_start();
        $_SESSION['ID'] = $user->getId();

        $this->redirect('board');
    }
}