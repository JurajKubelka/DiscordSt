accessing
isEnabled: aBoolean
	self basicIsEnabled = aBoolean ifTrue: [ ^ self ].
	self basicIsEnabled: aBoolean.
	self updateEnabledOfChildren.
	self announcer 
		announce: (DSEnabledChangedAnnouncement new 
			object: self;
			state: aBoolean
			yourself)