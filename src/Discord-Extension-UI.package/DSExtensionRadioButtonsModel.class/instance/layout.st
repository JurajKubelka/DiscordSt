accessing
layout
	super layout ifNil: [ self initializeLayout ].
	^ super layout