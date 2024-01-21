<?php

abstract class Controller {
    abstract public function call();
    protected $routeData;

    public function __construct(array $parameters = []) {
        $this->routeData = $parameters;
    }

    protected function render(string $template, array $variables = []){
        $templatePath = 'public/views/' . $template . '.php';
        $output = 'File not found';

        if(file_exists($templatePath)) {
            extract($variables);
            ob_start();
            include_once $templatePath;
            $output = ob_get_clean();
        }

        print $output;
    }

    protected function redirect(string $address) {
        $url = "http://$_SERVER[HTTP_HOST]";
        header("Location: {$url}/" . $address);
        exit();
    }
}