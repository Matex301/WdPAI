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

        $user = $_SESSION['ID'];
        $character = $this->routeData['id'];

        $owner = CharactersRepository::checkIfOwner($character, $user);

        if(!$owner['exists']) {
            $this->redirect('board');
        }

        $this->render('builder');
    }
}