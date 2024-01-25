<?php
require_once 'Repository.php';
require_once __DIR__ . '/../models/Admin.php';
class AdminRepository extends Repository
{
    public static function getUserByUsername(string $username) {
        $stmt = self::$database->prepare('
            SELECT * FROM public.admins WHERE username = :username
        ');
        $stmt->bindParam(':username', $username, PDO::PARAM_STR);
        $stmt->execute();

        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if(!$user) {
            return null;
        }

        return new Admin(
            $user['id'],
            $user['username'],
            $user['password']
        );
    }
}