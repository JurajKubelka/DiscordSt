updating
updateMessageContainer
	containerElement := BlElement new. 
	containerElement layout: BlLinearLayout vertical.
	containerElement constraintsDo: [ :c | 
		c horizontal matchParent.
		c vertical fitContent ].
	self addChild: containerElement