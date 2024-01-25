<?php
require_once 'Controller.php';
require_once __DIR__ . '/../repository/CharactersRepository.php';
class CharacterPostController extends Controller
{

    public function call()
    {
        if(!isset($this->routeData['id'])) {
            die('Wrong id');
        }

        $data = CharactersRepository::getDataById($this->routeData['id']);

        session_start();
        if(!$data['public']) {
            if(!isset($_SESSION['ID'])){
                die('Access denied');
            }
            if($_SESSION['ID'] != $data['owner']) {
                die('Access denied');
            }
        }

        echo json_encode($data);
        exit();
    }
}