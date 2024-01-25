<?php
require_once 'SessionController.php';
require_once __DIR__ . '/../repository/CharactersRepository.php';
class CreateCharactersController extends SessionController
{

    public function call()
    {
        $character = CharactersRepository::createCharacter($this->getId());
        $this->redirect('builder/' . $character->getId());
    }
}