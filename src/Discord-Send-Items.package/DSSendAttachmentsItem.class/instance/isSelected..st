accessing
isSelected: aBoolean
	isSelected = aBoolean ifTrue: [ ^ self ].
	isSelected := aBoolean.
	self announcer 
		announce: (DSSelectionChangedAnnouncement new 
			object: self;
			state: aBoolean
			yourself)