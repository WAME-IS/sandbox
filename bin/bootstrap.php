<?php

require __DIR__ . '/../vendor/autoload.php';

$configurator = new \Nette\Configurator;

ini_set('error_reporting', E_STRICT);
error_reporting(~E_USER_DEPRECATED);

$configurator->setDebugMode(TRUE);
$configurator->enableDebugger(LOG_PATH);
$configurator->setTempDirectory(TEMP_PATH);

$robotLoader = $configurator->createRobotLoader();
$robotLoader->addDirectory(VENDOR_PATH . '/' . PACKAGIST_NAME) // Development only!
            ->addDirectory(APP_PATH)
            ->addDirectory(BIN_PATH)
            ->register();

$pluginLoader = new Wame\PluginLoader();
$pluginLoader->setCacheDirectory(TEMP_PATH . '/cache');
$pluginLoader->addDirectory(VENDOR_PATH . '/' . PACKAGIST_NAME);
$pluginLoader->loadConfigs($configurator, TEMP_PATH);

$configurator->addServices(['plugin.loader' => $pluginLoader, 'robotLoader' => $robotLoader]);

foreach (\Nette\Utils\Finder::findFiles('*.neon')->exclude('*.dist.neon')->from(APP_PATH) as $file) {
    $configurator->addConfig($file->getPathName());
}

$container = $configurator->createContainer();

return $container;
