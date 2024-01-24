<?php
require_once 'Controller.php';
require_once __DIR__ . '/../repository/ClassesRepository.php';
class ClassesController extends Controller
{

    public function call()
    {
        $classes = ClassesRepository::getAllAndDescription();

        echo json_encode($classes);
        exit();
    }
}