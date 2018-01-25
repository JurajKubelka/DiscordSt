updating
ensureWebhookRegistry
	self
		assert: [ self submorphs size < 2 ]
		description: 'There should be at most one submorph'.
	self submorphs size isZero
		ifTrue: [ ^ self addWebhookMorph ].
	self submorphs first isWebhookMorph
		ifFalse: [ 
			self submorphs first delete.
			^ self addWebhookMorph ].
	^ self submorphs first