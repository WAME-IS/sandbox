<?php

// Uncomment this line if you must temporarily take down your site for maintenance.
// require __DIR__ . '/.maintenance.php';

define('BASE_PATH', dirname(__DIR__));
define('APP_PATH', BASE_PATH . '/app');
define('BIN_PATH', BASE_PATH . '/bin');
define('LOG_PATH', BASE_PATH . '/log');
define('PUBLIC_PATH', BASE_PATH . '/web');
define('PRIVATE_PATH', BASE_PATH . '/private');
define('TEMP_PATH', BASE_PATH . '/temp');
define('TEMPLATES_PATH', BASE_PATH . '/templates');
define('VENDOR_PATH', BASE_PATH . '/vendor');
define('HOSTNAME', isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : gethostname());
define('PACKAGIST_NAME', 'wame');

$container = require BIN_PATH . '/bootstrap.php';

$container->getByType('Nette\Application\Application')->run();
