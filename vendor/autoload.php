<?php
spl_autoload_register(function ($class) {
  $prefix = 'Src\\';
  $base_dir = __DIR__ . '/../src/';
  $len = strlen($prefix);
  if (strncmp($prefix, $class, $len) !== 0) {
    return;
  }
  $relative_class = substr($class, $len);
  $file = $base_dir . str_replace('\\', '/', $relative_class) . '.php';
  if (file_exists($file)) {
    require $file;
  }
});

spl_autoload_register(function ($class) {
  $prefix = 'Src\\Config\\';
  $base_dir = __DIR__ . '/../config/';
  $len = strlen($prefix);
  if (strncmp($prefix, $class, $len) !== 0) {
    return;
  }
  $relative_class = substr($class, $len);
  $file = $base_dir . strtolower(str_replace('\\', '/', $relative_class)) . '.php'; // strtolower -  Dateiname in Kleinbuchstaben umgewandeln
  if (file_exists($file)) {
    require $file;
  } else {
    echo "Datei nicht gefunden: $file\n";
  }
});
