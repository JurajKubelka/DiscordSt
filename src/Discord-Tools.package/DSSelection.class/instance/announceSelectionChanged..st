announcing
announceSelectionChanged: aBoolean
	announcer ifNil: [ ^ self ].
	self announcer announce: (DSSelectionChangedAnnouncement new 
		object: self; 
		state: aBoolean; 
		yourself)