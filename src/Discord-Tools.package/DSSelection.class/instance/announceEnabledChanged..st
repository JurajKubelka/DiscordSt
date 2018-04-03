announcing
announceEnabledChanged: aBoolean
	announcer ifNil: [ ^ self ].
	self announcer announce: (DSEnabledChangedAnnouncement new 
		object: self; 
		state: aBoolean; 
		yourself)