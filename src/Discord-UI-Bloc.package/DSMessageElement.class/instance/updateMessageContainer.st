updating
updateMessageContainer
	| container |
	container := BlElement new. 
	container layout: BlLinearLayout vertical.
	container constraintsDo: [ :c | 
		c horizontal exact: 300.
		c vertical fitContent ].
	self addChild: container