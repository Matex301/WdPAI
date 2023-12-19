<?php
require_once 'AppController.php';
require_once __DIR__ . '/../repository/ClassesRepository.php';
class ClassesController extends AppController
{

    public function call()
    {
        $classesRepository = new ClassesRepository();
        $classes = $classesRepository->getAllAndDescription();

        for($i = 0; $i < sizeof($classes); $i++){
            $classes[$i]['features'] = json_decode($classes[$i]['features']);
        }

        echo json_encode($classes);
        exit();
    }
}