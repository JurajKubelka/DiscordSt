accessing
registry: anObject
	registry == anObject ifTrue: [ ^ self ].
	registry := anObject.
	self updateSubmorphs.