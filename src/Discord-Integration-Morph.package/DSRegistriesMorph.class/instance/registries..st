accessing
registries: anObject
	registries := anObject.
	self changed: #morphItems.
	self changed: #selection.