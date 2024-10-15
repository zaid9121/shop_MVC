<?php

namespace Src\Core;

class Router
{
  private $routes = [];

  // Methode zum Hinzufügen von Routen
  public function add($route, $controller)
  {
    $this->routes[$route] = $controller;
  }

  // Methode zum Dispatchen der Anfrage
  public function dispatch($uri)
  {
    // Entferne führende und abschließende Schrägstriche
    $uri = trim($uri, '/');

    // Iteriere durch alle definierten Routen
    foreach ($this->routes as $route => $controller) {
      // Ersetze Platzhalter in der Route durch reguläre Ausdrücke
      $pattern = preg_replace('#\{[a-zA-Z_]+\}#', '([a-zA-Z0-9-]+)', $route);

      // Überprüfe, ob die aktuelle URI zur Route passt
      if (preg_match("#^$pattern$#", $uri, $matches)) {
        // Entferne das erste Element, das den gesamten Match enthält
        array_shift($matches);

        // Rufe die execute-Methode des Controllers auf und übergebe die extrahierten Parameter
        return (new $controller)->execute(...$matches);
      }
    }

    // Wenn keine Route passt, zeige eine 404-Fehlerseite an
    echo '404 - Seite nicht gefunden.';
  }
}
