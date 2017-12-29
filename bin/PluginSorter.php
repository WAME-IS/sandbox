<?php

namespace Wame;


class PluginSorter extends DependencySorter
{
    /**
     * Get itam dependencies
     *
     * @param $item
     *
     * @return array
     */
	protected function getItemDependencies($item)
    {
		return array_keys($item->getDependencies());
	}


    /**
     * Get all item dependencies
     *
     * @param $item
     *
     * @return array
     */
	protected function getAllItemDependencies($item)
    {
		return array_keys($item->getAllDependencies());
	}
	
}
