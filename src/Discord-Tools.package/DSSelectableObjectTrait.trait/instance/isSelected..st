accessing
isSelected: aBoolean
	self basicIsSelected = aBoolean ifTrue: [ ^ self ].
	self basicIsSelected: aBoolean.
	self updateEnabledOfChildren.
	self announcer 
		announce: (DSSelectionChangedAnnouncement new 
			object: self;
			state: aBoolean
			yourself)