updating
ensureAuthenticatedClientMorph
	self
		assert: [ self submorphs size < 2 ]
		description: 'There should be at most one submorph'.
	self submorphs size isZero
		ifTrue: [ ^ self addAuthenticatedClientMorph ].
	self submorphs first isAuthenticatedClientMorph
		ifFalse: [ 
			self submorphs first delete.
			^ self addAuthenticatedClientMorph ].
	^ self submorphs first