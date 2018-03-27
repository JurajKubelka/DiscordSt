accessing
selection
	<return: #DSRegistry or: nil>
	^ self registries selection
			ifNotNil: [ :aRegistry | DSRegistryItemMorph new 
				registry: aRegistry;
				yourself ]