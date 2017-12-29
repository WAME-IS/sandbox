<?php

namespace Wame;

use Exception;


class DependencySorter
{
    /** @var array */
	private $dependsCache = [];


	/**
	 * Sort items based on their dependencies. Using insertion sort
	 * 
	 * @param array $items
	 */
	public function sort(&$items)
    {
		$callback = $this->getDependencySorter($items);

		for ($i = 1; $i < count($items); $i++) {
			for ($j = 0; $j < $i; $j++) {
				if (call_user_func_array($callback, [$items[$j], $items[$i]])) {
					$o = $items[$j];
					$items[$j] = $items[$i];
					$items[$i] = $o;
					$i--;
				}
			}
		}
	}


	/**
	 * Used to execute function on all dependencies
	 * 
	 * @param array $items
	 * @param callable $callback
	 */
	public function forAllDependencies($items, $callback)
    {
		foreach ($items as $item) {
			foreach ($this->getAllDependencies($item, $items) as $dependency) {
				call_user_func($callback, $this->getItemByName($dependency, $items));
			}
		}
	}


	/**
     * Dependency sorter
     *
	 * @param array $items
	 * @return callable
	 */
	public function getDependencySorter($items)
    {
		return function($p1, $p2) use ($items)
        {
			$allDependencies = $this->getAllDependencies($p1, $items);

			if (in_array($p2->getName(), $allDependencies)) {
				return 1;
			}

			return 0;
		};
	}


	/**
	 * Get list of all dependencies for given item
	 * 
	 * @param object $item
	 * @param array $allItems
	 * @param array $referenceItems
	 * @return array
	 * @throws Exception
	 */
	public function getAllDependencies($item, $allItems, $referenceItems = [])
    {
		$itemName = $item->getName();
		$referenceItems[] = $itemName;

		//TODO inline cache?
		if (!array_key_exists($itemName, $this->dependsCache)) {
			$allDepends = [];
			$depends = $this->getAllItemDependencies($item);

			foreach ($depends as $dep) {
			    if (substr($dep, 0, strlen(PACKAGIST_NAME) + 1) != PACKAGIST_NAME . '/') {
			        continue;
                }

				if (in_array($dep, $referenceItems)) {
                    continue;
//					throw new Exception('Cyclic dependency reference detected for item ' . $dep . ' from ' . $itemName . '!');
				} else {
					$allDepends[] = $dep;
				}

				$depItem = $this->getItemByName($dep, $allItems);

				if ($depItem) {
					$allDepends = array_unique(array_merge($allDepends, $this->getAllDependencies($depItem, $allItems, $referenceItems)));
				} else {
					if (in_array($dep, $this->getItemDependencies($item))) { //ignore soft required
						throw new Exception('Missing dependency item ' . $dep . ' for ' . $itemName . '!');
					}
				}
			}

			$this->dependsCache[$itemName] = $allDepends;
		}

		return $this->dependsCache[$itemName];
	}


    /**
     * Get item by name
     *
     * @param string $name
     * @param $items
     *
     * @return mixed
     */
	private function getItemByName($name, $items)
    {
        if (!is_array($items)) {
            $items = [$items];
        }

		foreach ($items as $item) {
			if ($item->getName() == $name) {
				return $item;
			}
		}
	}


    /**
     * Get item dependencies
     *
     * @param $item
     *
     * @return array
     */
	protected function getItemDependencies($item)
    {
		return $item->getDependencies();
	}


    /**
     * Get all items dependencies
     *
     * @param $item
     *
     * @return array
     */
	protected function getAllItemDependencies($item)
    {
		return $item->getDependencies();
	}

}
