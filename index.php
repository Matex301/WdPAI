<?php

require "router.php";

Router::get('/', 'StartController');
Router::get('/start', 'StartController');
Router::get('/main', 'MainController');
Router::get('/main/$id', 'MainController');