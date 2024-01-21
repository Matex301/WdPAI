<?php

require_once 'Repository.php';
require_once __DIR__ . '/../models/User.php';
class UserRepository extends Repository {

    public static function getUserByUsername(string $username) {
        $stmt = self::$database->prepare('
            SELECT * FROM public.users WHERE username = :username
        ');
        $stmt->bindParam(':username', $username, PDO::PARAM_STR);
        $stmt->execute();

        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if(!$user) {
            return null;
        }

        return new User(
            $user['id'],
            $user['username'],
            $user['password']
        );
    }

    public static function addUser($username, $email, $password){
        $stmt = self::$database->prepare('
            INSERT INTO users (username, email, password)
            VALUES (?, ?, ?)
        ');

        $stmt->bindParam(1, $username, PDO::PARAM_STR);
        $stmt->bindParam(2, $email, PDO::PARAM_STR);
        $stmt->bindParam(3, $password, PDO::PARAM_STR);

        $stmt->execute();
    }

    public static function isUsername($username) {
        $stmt = self::$database->prepare('
            SELECT exists(select 1 from users where username LIKE ?)
        ');

        $stmt->bindParam(1, $username, PDO::PARAM_STR);

        $stmt->execute();

        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        return $result['exists'];
    }

    public static function isEmail($email) {
        $stmt = self::$database->prepare('
            SELECT exists(select 1 from users where email LIKE ?)
        ');

        $stmt->bindParam(1, $email, PDO::PARAM_STR);

        $stmt->execute();

        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        return $result['exists'];
    }
}