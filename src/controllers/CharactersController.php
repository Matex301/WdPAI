<?php
require_once 'SessionController.php';
require_once __DIR__ . '/../repository/CharactersRepository.php';
class CharactersController extends SessionController
{

    public function call()
    {
        $id = $_SESSION['ID'];
        $character = CharactersRepository::getByOwner($id);
        die(json_encode($character));
    }
}