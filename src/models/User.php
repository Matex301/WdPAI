<?php

class User {
    private $username;

    public function __construct(string $username) {
        $this->username = $username;
    }

    public function getUsername(){
        return $this->username;
    }

    public function setUsername(string $username){
        $this->username = $username;
    }
}