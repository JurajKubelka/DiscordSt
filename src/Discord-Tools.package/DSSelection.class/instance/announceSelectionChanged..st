announcing
announceSelectionChanged: aBoolean
	announcer ifNil: [ ^ self ].
	self announcer announce: (DSSelectionChangedAnnouncement new 
		selection: self; 
		state: aBoolean; 
		yourself)