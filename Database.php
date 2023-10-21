<?php

require_once 'config.php';
class Database {
    private static $instance = null;
    private $username;
    private $password;
    private $host;
    private $database;

    private $connection;

    private function __construct() {
        $this->username = USERNAME;
        $this->password = PASSWORD;
        $this->host = HOST;
        $this->database = DATABASE;

        try {
            $this->connection = new PDO(
                "pgsql:host=$this->host;port=5432;dbname=$this->database",
                $this->username,
                $this->password
            );
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        } catch(PDOException $error) {
            die($error);
        }
    }

    public static function get(): PDO
    {
        if(!self::$instance) {
            self::$instance = new Database();
        }
        return self::$instance->connection;
    }
}