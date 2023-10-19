<?php

class Router {
    public static $routes;

    public static function get($route, $controller) {
        $route = trim($route, '/');
        self::$routes[$route] = $controller;
    }

    public static function run() {
        $request_url = filter_var($_SERVER['REQUEST_URI'], FILTER_SANITIZE_URL);
        $request_url = rtrim($request_url, '/');
        $request_url = strtok($request_url, '?');

        $request_method = $_SERVER['REQUEST_METHOD'];

        $request_url_parts = explode('/', $request_url);
        array_shift($request_url_parts);

        $route = $request_url_parts[0];
        if(!array_key_exists($route, self::$routes)) {
            die("Wrong URL!");
        }

        $controller = self::$routes[$route];
        include ('src/controllers/' . $controller . '.php');
        $object = new $controller;
        $object->call();
    }
}