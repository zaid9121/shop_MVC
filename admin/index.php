<?php
require_once '../config/config.php';
require_once '../config/database.php';
require_once '../core/Router.php';
require_once '../core/BaseController.php';

// Autoload-Funktion für Klassen
spl_autoload_register(function ($className) {
    $file = '../' . str_replace('\\', '/', $className) . '.php';
    if (file_exists($file)) {
        require_once $file;
    }
});

$router = new Router();

// Definieren Sie hier Ihre Admin-Routen
$router->addRoute('', 'Controllers\Admin\AdminProductController', 'index');
$router->addRoute('user', 'Controllers\Admin\AdminUserController', 'index');
$router->addRoute('category', 'Controllers\Admin\AdminCategoryController', 'index');
$router->addRoute('product', 'Controllers\Admin\AdminProductController', 'index');

// Fügen Sie weitere Admin-Routen hinzu...

// URL-Parameter abrufen
$url = isset($_GET['url']) ? $_GET['url'] : '';

// Route verarbeiten
try {
    $router->dispatch($url);
} catch (Exception $e) {
    echo "404 - Seite nicht gefunden";
}


echo "Test admin 3";
