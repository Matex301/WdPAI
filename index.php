<?php

require "router.php";

Router::get('/start', 'StartController');
Router::get('/main', 'MainController');

Router::run();