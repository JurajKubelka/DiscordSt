accessing
selection: anObject
	self 
		assert: [ anObject isKindOf: DSConnectionRegistry ]
		description: 'It should be a registry'.
	selection := anObject.
	self announceSelectionChanged: anObject.