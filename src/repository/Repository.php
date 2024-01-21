<?php
require_once 'Database.php';

class Repository {
    protected static $database;

    public static function setDatabase($db) {
        Repository::$database = $db;
    }
}
Repository::setDatabase(Database::get());