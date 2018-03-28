accessing
isEnabled: aBoolean
	isEnabled = aBoolean ifTrue: [ ^ self ].
	isEnabled := aBoolean.
	self announcer 
		announce: (DSEnabledChangedAnnouncement new 
			object: self;
			state: aBoolean
			yourself)