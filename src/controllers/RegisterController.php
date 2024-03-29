<?php
require_once "Controller.php";
require_once __DIR__ . '/../repository/UsersRepository.php';
class RegisterController extends Controller
{

    public function call()
    {
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        //TODO isSet
        if(!isset($username) && !isset($email) && !isset($password)) {
            $this->render("start", ['registerMessage' => "Please fill all fields"]);
            exit();
        }

        if(UsersRepository::isUsername($username)) {
            $this->render("start", ['registerMessage' => "Username taken"]);
            exit();
        }

        if(UsersRepository::isEmail($email)) {
            $this->render("start", ['registerMessage' => "Email already used"]);
            exit();
        }

        $salt = base64_encode(random_bytes(12));
        $hash = crypt($password, '$6$'.$salt);

        UsersRepository::createUser($username, $email, $hash);
        //TODO result handler

        $this->redirect('');
    }
}