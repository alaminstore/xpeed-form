<?php

define('APP_ROOT', dirname(__FILE__));
define("BASE_URL", "localhost/xpeed-form/");

$home_url = $current_url = $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];

if ($home_url === BASE_URL || $home_url  === BASE_URL . 'index.php') {
    include 'controller/FormController.php';
    $controller = new FormController();
    $controller->view();
    die();
}

if (empty($_REQUEST['module'])) {
    die("<h2>Module not specified</h2>");
}
$module = $_REQUEST['module'] ?? '';
$action = $_REQUEST['action'] ?? '';

$controller = $module . "Controller";
// echo $controller;
if (file_exists("controller/$controller.php")) {
    include("./controller/$controller.php");
    $activeController = new $controller();

    if (method_exists($activeController, $action)) {
        $activeController->$action($_REQUEST);
    } else {
        die("<h2>unknown method $action, not exists</h2>");
    }
} else {
    die("<h2>Controller not exists</h2>");
}
