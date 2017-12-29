<?php

namespace Wame;


abstract class AbstractPlugin extends \Nette\Object
{
	/** @var object */
	protected $composerJson;


    /**
     * Get composer.json file
     *
     * @return object
     */
	public abstract function getComposerJson();


    /**
     * Get plugin name
     *
     * @return string
     */
	public function getName()
    {
		return $this->getComposerJson()->name;
	}


    /**
     * Get require dependencies
     *
     * @return array
     */
	public function getDependencies()
    {
		if (property_exists($this->getComposerJson(), 'require')) {
			return (array) $this->getComposerJson()->require;
		} else {
			return [];
		}
	}


    /**
     * Get soft require dependencies
     *
     * @return array
     */
	public function getSoftDependencies()
    {
		if (property_exists($this->getComposerJson(), 'softRequire') && property_exists($this->getComposerJson(), 'require')) {
			return (array) $this->getComposerJson()->require;
		} else {
			return [];
		}
	}


    /**
     * Get all dependencies
     *
     * @return array
     */
	public function getAllDependencies()
    {
		return array_merge($this->getDependencies(), $this->getSoftDependencies());
	}
	
}
