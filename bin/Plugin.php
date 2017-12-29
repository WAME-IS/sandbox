<?php

namespace Wame;

use Nette\FileNotFoundException;
use Nette\Utils\Json;


class Plugin extends AbstractPlugin
{
	/** @var string Composer file path */
	private $composerPath;


	public function __construct($composerPath)
    {
		$this->composerPath = $composerPath;
	}


    /**
     * Get composer.json
     *
     * @return object
     */
	public function getComposerJson()
    {
		if (!$this->composerJson) {
			if (file_exists($this->composerPath)) {
				$json = file_get_contents($this->composerPath);
				$this->composerJson = Json::decode($json);
			} else {
				throw new FileNotFoundException($this->composerPath . ' is missing!');
			}
		}

		return $this->composerJson;
	}


    /**
     * Get composer.json path
     *
     * @return string
     */
	public function getComposerPath()
    {
		return $this->composerPath;
	}


    /**
     * Get plugin path
     *
     * @return string
     */
	public function getPluginPath()
    {
		return dirname($this->composerPath);
	}


    /**
     * Check valid plugin
     *
     * @return bool
     */
    public function isValidPlugin()
    {
        $composer = $this->getComposerJson();

        return isset($composer->type) && $composer->type == 'wame-module';
    }

}
