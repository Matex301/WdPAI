<?php
require_once 'Controller.php';
require_once __DIR__ . '/../repository/ClassesRepository.php';
class ClassesController extends Controller
{

    public function call()
    {
        $classes = ClassesRepository::getAllAndDescription();

        for($i = 0; $i < sizeof($classes); $i++){
            $classes[$i]['features'] = json_decode($classes[$i]['features']);
        }

        echo json_encode($classes);
        exit();
    }
}