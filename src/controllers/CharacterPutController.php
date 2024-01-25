<?php
require_once 'SessionController.php';
require_once __DIR__ . '/../repository/CharactersRepository.php';
class CharacterPutController extends SessionController
{

    public function call()
    {
        if(!isset($this->routeData['id'])) {
            die('Wrong id');
        }

        $id = $this->routeData['id'];
        if(!CharactersRepository::checkIfOwner($id, $this->getId())) {
            die('Access denied');
        }

        $character = json_decode(file_get_contents('php://input'), true);
        CharactersRepository::updateName($id, $character['name']);
        CharactersRepository::updateSelections($id, $character['class'], $character['subclass'], $character['background'], $character['race'], $character['selected']);
        CharactersRepository::updateStats($id, $character['stats']['strength'], $character['stats']['dexterity'], $character['stats']['constitution'], $character['stats']['wisdom'], $character['stats']['intelligence'], $character['stats']['charisma']);
    }
}