<?php
require_once 'SessionController.php';
require_once __DIR__ . '/../repository/CharactersRepository.php';
class BuilderController extends SessionController
{

    public function call()
    {
        if(!isset($this->routeData['id'])) {
            die('Wrong id');
        }

        $character = $this->routeData['id'];

        $owner = CharactersRepository::checkIfOwner($character, $this->getId());

        if(!$owner['exists']) {
            $this->redirect('board');
        }

        $this->render('builder');
    }
}