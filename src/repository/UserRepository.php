<?php

require_once 'Repository.php';
require_once __DIR__ . '/../models/User.php';
class UserRepository extends Repository {

    public function getUserByUsername(string $username) {
        $stmt = $this->database->prepare('
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
}