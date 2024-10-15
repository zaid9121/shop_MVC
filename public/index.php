<?php

// Fehlerberichterstattung aktivieren
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);





require_once __DIR__ . '/../vendor/autoload.php';

define('BASE_DIR', __DIR__ . '/..');

use Src\Core\Router;
use Src\Controllers\Frontend\ProductController;

$router = new Router();

// Route für Produktliste
$router->add('', ProductController::class);

// Route für Produktdetails mit Kategorie-Slug und Produkt-Slug
$router->add('{category_slug}/{product_slug}', ProductController::class);

// Neue Route für Kategorien
//$router->add('category/{category_slug}', ProductController::class);
$router->add('{category_slug}', ProductController::class);
$router->dispatch($_SERVER['REQUEST_URI']);
