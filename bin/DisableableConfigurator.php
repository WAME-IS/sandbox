<?php

namespace Wame;

use Nette\Configurator;
use Nette\DI\Container;
use Nette\DI\ContainerLoader;
use Nette\Environment;
use Nette\InvalidArgumentException;


class DisableableConfigurator extends Configurator
{
    /**
	 * Set parameter %speedupMode%
     *
	 * @param  bool|string|array
     *
	 * @return self
	 */
	public function setSpeedupMode($value)
	{
		if (is_string($value) || is_array($value)) {
			$value = static::detectDebugMode($value);
		} elseif (!is_bool($value)) {
			throw new InvalidArgumentException(sprintf('Value must be either a string, array, or boolean, %s given.', gettype($value)));
		}

		$this->parameters['speedupMode'] = $value;

		return $this;
	}


    /**
     * Check SpeedupMode
     *
	 * @return bool
	 */
	public function isSpeedupMode()
	{
		return $this->parameters['debugMode'];
	}


    /**
     * Returns system DI container
     *
     * @return Container
     */
    public function createContainer()
    {
        $loader = new ContainerLoader(
			$this->getCacheDirectory() . '/Nette.Configurator'
//			!$this->parameters['speedupMode']
		);

		$class = $loader->load(
			array($this->parameters, $this->files, PHP_VERSION_ID - PHP_RELEASE_VERSION),
			array($this, 'generateContainer')
		);

		$container = new $class;

		foreach ($this->services as $name => $service) {
			$container->addService($name, $service);
		}

		$container->initialize();

		if (class_exists('Nette\Environment')) {
			Environment::setContext($container); // back compatibility
		}

		return $container;
    }


    /**
     * Adds configuration file
     *
     * @return self
     */
    public function addConfig($file, $section = NULL)
    {
        $debugMode = $this->parameters['debugMode'];

//        if ($debugMode) {
//            $this->parameters['debugMode'] = !$this->parameters['speedupMode'];
//        }

        parent::addConfig($file, $section);

        $this->parameters['debugMode'] = $debugMode;

        return $this;
    }

}
