<?php
require_once 'SessionController.php';
require_once __DIR__ . '/../repository/CharactersRepository.php';
class BuilderProficienciesController extends SessionController
{

    public function call()
    {
        if(!isset($this->routeData['id'])) {
            die('Wrong id');
        }

        $proficiencies = CharactersRepository::getProficiencies($this->routeData['id']);
        die(json_encode($proficiencies));
    }
}