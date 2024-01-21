<?php

require "Router.php";

Router::get('/', 'StartController');
Router::get('/start', 'StartController');

Router::get('/board', 'BoardController');
Router::post('/board', 'CharactersController');

Router::get('/builder/$id', 'BuilderController');

Router::post('/login', 'LoginController');
Router::get('/logout', 'LogoutController'); //TO CHANGE
Router::post('/register', 'RegisterController');

Router::post('/races', 'RacesController');
Router::post('/subraces/$id', 'SubracesController');
Router::post('/classes', 'ClassesController');
Router::post('/backgrounds', 'BackgroundsController');

Router::any();