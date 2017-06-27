initialization
initializeLayout
	| newLayout |
	newLayout := SpecRowLayout composed.
	self widgets keysAndValuesDo: [ :key :model | 
		newLayout add: key ].
	self layout: newLayout.	