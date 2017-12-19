enumerating
morphItems
	^ self registries collect: [ :eachRegistry | 
		DSWebhookRegistryItemMorph new
		registry: eachRegistry;
		yourself. ]