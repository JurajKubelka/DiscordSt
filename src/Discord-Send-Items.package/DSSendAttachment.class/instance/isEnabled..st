accessing
isEnabled: aBoolean
	self assert: [ aBoolean or: [ aBoolean not ] ] description: 'It should be a boolean'.
	isEnabled = aBoolean ifTrue: [ ^ self ].
	isEnabled := aBoolean.
	self announcer 
		announce: (DSEnabledChangedAnnouncement new 
			object: self;
			state: aBoolean
			yourself)