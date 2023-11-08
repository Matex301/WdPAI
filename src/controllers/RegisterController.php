<?php
require_once "AppController.php";
require_once __DIR__ . '/../repository/UserRepository.php';
class RegisterController extends AppController
{

    public function call()
    {
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $repeatPassword = $_POST['rep-password'];

        //TODO isSet

        //$salt = random_bytes(16);
        $salt = base64_encode(random_bytes(12));
        $hash = crypt($password, '$6$'.$salt);

        UserRepository::addUser($username, $email, $hash);
        //TODO result handler

        $url = "http://$_SERVER[HTTP_HOST]";
        header("Location: {$url}/");
    }
}