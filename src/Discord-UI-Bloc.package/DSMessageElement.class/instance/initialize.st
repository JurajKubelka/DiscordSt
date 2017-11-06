initialization
initialize
	super initialize.
	self layout: BlLinearLayout horizontal.
	self constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical fitContent ].
	self border: (BlBorder paint: Color veryLightGray width: 1).
