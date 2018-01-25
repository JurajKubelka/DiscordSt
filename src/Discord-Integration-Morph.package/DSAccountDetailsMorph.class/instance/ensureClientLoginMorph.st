updating
ensureClientLoginMorph
	self
		assert: [ self submorphs size < 2 ]
		description: 'There should be at most one submorph'.
	self submorphs size isZero
		ifTrue: [ ^ self addClientLoginMorph ].
	self submorphs first isClientLoginMorph
		ifFalse: [ 
			self submorphs first delete.
			^ self addClientLoginMorph ].
	^ self submorphs first