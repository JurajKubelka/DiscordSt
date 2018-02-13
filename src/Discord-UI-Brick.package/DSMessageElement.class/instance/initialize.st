initialization
initialize
	super initialize.
	self layout: BlLinearLayout vertical.
	self constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical fitContent ].
	self border: (BlBorder paint: Color veryLightGray width: 1).
