<?php
require_once "Controller.php";
require_once __DIR__ . '/../repository/AdminRepository.php';
class AdminLoginPostController extends Controller
{

    public function call()
    {
        if(!(isset($_POST['username']) && isset($_POST['password']))){
            $this->render("admin", ['loginMessage' => "Invalid"]);
            exit();
        }

        $username = $_POST['username'];
        $password = $_POST['password'];

        $admin = AdminRepository::getUserByUsername($username);

        if(!$admin) {
            $this->render("admin", ['loginMessage' => "Invalid username"]);
            exit();
        }

        $hash = $admin->getPassword();

        if(!hash_equals(crypt($password, $hash), $hash)){
            $this->render("admin", ['loginMessage' => "Invalid password"]);
            exit();
        }

        session_start();
        $_SESSION['ADMIN'] = 1;

        $this->redirect('panel');
    }
}