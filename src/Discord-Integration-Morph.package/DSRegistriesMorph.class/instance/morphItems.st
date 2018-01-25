enumerating
morphItems
	^ self registries collect: [ :eachRegistry | 
		DSRegistryItemMorph new
		registry: eachRegistry;
		yourself. ]