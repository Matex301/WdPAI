<?php
require "Router.php";

Router::get('/', 'StartController');
Router::get('/start', 'StartController');

Router::get('/board', 'BoardController');
Router::post('/board', 'CharactersController');

Router::get('/create', 'CreateCharactersController');
Router::get('/builder/$id', 'BuilderController');
Router::post('/builder/$id', 'CharacterPostController');
Router::put('/builder/$id', 'CharacterPutController');
Router::post('/builder/prof/$id', 'BuilderProficienciesController');

Router::post('/login', 'LoginController');
Router::get('/logout', 'LogoutController'); //TO CHANGE
Router::post('/register', 'RegisterController');


Router::post('/races', 'RacesController');
Router::post('/subraces/$id', 'SubracesController');

Router::post('/classes', 'ClassesController');
Router::post('/subclasses/$id', 'SubclassesController');

Router::post('/backgrounds', 'BackgroundsController');

Router::get('/admin', 'AdminLoginController');
Router::post('/admin', 'AdminLoginPostController');

Router::get('/panel', 'PanelController');
Router::post('/panel', 'PanelPostController');
Router::delete('/panel/$id', 'PanelDeleteController');

Router::any();