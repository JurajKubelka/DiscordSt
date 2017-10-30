updating
updateMessageContainer
	| container |
	container := BlElement new. 
	container layout: BlLinearLayout vertical.
	container constraintsDo: [ :c | 
		c horizontal fitContent.
		c vertical fitContent ].
	self addChild: container