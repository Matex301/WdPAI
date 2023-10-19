<?php

abstract class AppController {
    //abstract public function call();

    protected function render(string $template = null){
        $templatePath = 'public/views/' . $template . '.html';
        $output = 'File not found';

        if(file_exists($templatePath)) {
            ob_start();
            include_once $templatePath;
            $output = ob_get_clean();
        }

        print $output;
    }
}