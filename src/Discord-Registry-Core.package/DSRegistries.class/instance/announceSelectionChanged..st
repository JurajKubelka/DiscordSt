announcing
announceSelectionChanged: aDSRegistry 
	announcer ifNil: [ ^ self ].
	self announcer announce: (DSRegistrySelectionChangedAnnouncement new 
		registries: self; 
		selection: aDSRegistry; 
		yourself)