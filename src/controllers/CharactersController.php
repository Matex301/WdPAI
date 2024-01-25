<?php
require_once 'SessionController.php';
require_once __DIR__ . '/../repository/CharactersRepository.php';
class CharactersController extends SessionController
{

    public function call()
    {
        $character = CharactersRepository::getByOwner($this->getId());
        die(json_encode($character));
    }
}