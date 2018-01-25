accessing
registry: aDSConnectionRegistry
	registry := aDSConnectionRegistry.
	self registerTo: aDSConnectionRegistry. 
	self updateView.