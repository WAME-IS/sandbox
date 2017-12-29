<?php

namespace Wame;

use Exception;
use Nette\Caching\Cache;
use Nette\Caching\IStorage;
use Nette\Caching\Storages\FileStorage;
use Nette\Configurator;
use Nette\Object;
use Tracy\Debugger;


class PluginLoader extends Object
{
    const COMPOSER_FILE = 'composer.json';
    const EXTENSIONS_PATH = 'vendor';


    /** @var array */
    private $pluginDirectories = [];

    /** @var IStorage */
    private $cacheStorage;

    /** @var Plugin[] */
    private $plugins = [];

    /** @var float */
    private $pluginLoadTime = 0;


    /**
     * Load all plugin config neon files
     *
     * @param \Nette\Configurator $configurator
     */
    public function loadConfigs(Configurator $configurator)
    {
        Debugger::timer('plugin');
        $a = microtime(true);

        $cache = null;

        if ($this->cacheStorage) {
            $cache = new Cache($this->cacheStorage, "PluginLoader");
        }

        if ($cache) {
            $configs = $cache->load("configs");
            $this->plugins = $cache->load("plugins");

            if (!$configs || !$this->plugins) {
                $configs = $this->getConfigsArray();

                $cache->save("configs", $configs);
                $cache->save("plugins", $this->plugins);
            }
        } else {
            $configs = $this->getConfigsArray();
        }
        
        foreach ($configs as $config) {
            $configurator->addConfig($config);
        }

        $this->pluginLoadTime += Debugger::timer('plugin');
    }


    /**
     * Sort all config neon files by dependencies
     *
     * @return array
     */
    protected function getConfigsArray()
    {
        $configs = [];
        $pluginsFiles = [];

        foreach ($this->pluginDirectories as $dir) {
            $pluginsFiles = array_merge($pluginsFiles, glob($dir . '/**/' . self::COMPOSER_FILE));
        }

        foreach ($pluginsFiles as $pf) {
            $plugin = new Plugin($pf);

            if ($plugin->isValidPlugin()) {
                if($this->getPluginByName($plugin->getName())) {
                    throw new \Nette\InvalidArgumentException("Plugin with name {$plugin->getName()} already exist.");
                }

                $this->plugins[] = $plugin;
            }
        }

        $sorter = new PluginSorter();
        $sorter->sort($this->plugins);

        if (!empty($this->plugins)) {
            //base configs
            foreach ($this->plugins as $plugin) {
                $configs = array_merge($configs, glob($plugin->getPluginPath() . '/config/*.neon'));
            }

            //extensions configs
            foreach ($this->plugins as $firstPlugin) {
                foreach ($this->plugins as $secondPlugin) {
                    if ($firstPlugin == $secondPlugin) {
                        continue;
                    }

                    $configDir = $firstPlugin->getPluginPath() . '/' . self::EXTENSIONS_PATH . '/' . $secondPlugin->getName() . '/config/';
                    if (!file_exists($configDir)) {
                        continue;
                    }

                    $configs = array_merge($configs, glob($configDir . '*.neon'));
                }
            }
        }
        
        return $configs;
    }


    /**
     * Get all plugins
     *
     * @return Plugin[]
     */
    public function getPlugins()
    {
        return $this->plugins;
    }

    
    /**
     * Get plugin by name
     * 
     * @param string $name
     *
     * @return Plugin|null
     */
    public function getPluginByName($name)
    {
        if (!$this->plugins) {
            return null;
        }

        foreach ($this->plugins as $plugin) {
            if ($plugin->getName() == $name) {
                return $plugin;
            }
        }

        return null;
    }


    /**
     * Add direcotry to look for plugins
     * 
     * @param string $dir Direcotry to add
     * @return PluginLoader this
     * @throws Exception if directory doesnt exist
     */
    public function addDirectory($dir)
    {
        if (is_dir($dir)) {
            $this->pluginDirectories[] = $dir;

            return $this;
        } else {
            throw new Exception("Directory $dir doesnt exist.");
        }
    }


    /**
     * Set cache storage
     *
     * @param \Nette\Caching\IStorage $cacheStorage
     */
    public function setCacheStorage(IStorage $cacheStorage)
    {
        $this->cacheStorage = $cacheStorage;
    }


    /**
     * Set cache directory
     *
     * @param string $cacheDirectory
     */
    public function setCacheDirectory($cacheDirectory)
    {
        $this->setCacheStorage(new FileStorage($cacheDirectory));
    }


    /**
     * Get plugin load time
     *
     * @return float
     */
    function getPluginLoadTime()
    {
        return $this->pluginLoadTime;
    }

}
