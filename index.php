<?php

require "router.php";

Router::get('/', 'StartController');
Router::get('/start', 'StartController');
Router::get('/main', 'MainController');
Router::get('/main/$id', 'MainController');

Router::post('/login', 'LoginController');
Router::get('/logout', 'LogoutController');
Router::post('/register', 'RegisterController');

Router::post('/races', 'RacesController');
Router::post('/subraces/$id', 'SubracesController');

Router::any();