<?php

use Illuminate\Http\Request;

// DEBUG LOG
file_put_contents('/tmp/laravel_debug.log', 'INDEX.PHP ACCESSED: '.date('c')."\n", FILE_APPEND);

define('LARAVEL_START', microtime(true));

// Determine if the application is in maintenance mode...
if (file_exists($maintenance = __DIR__ . '/../storage/framework/maintenance.php')) {
    require $maintenance;
}

// Register the Composer autoloader...
require __DIR__ . '/../vendor/autoload.php';

// Bootstrap Laravel and handle the request...
(require_once __DIR__ . '/../bootstrap/app.php')
    ->handleRequest(Request::capture());
