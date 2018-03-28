accessing
isSelected: aBoolean
	self assert: [ aBoolean or: [ aBoolean not ] ] description: 'It should be a boolean'.
	isSelected = aBoolean ifTrue: [ ^ self ].
	isSelected := aBoolean.
	self updateEnabledOfChildren.
	self announcer 
		announce: (DSSelectionChangedAnnouncement new 
			object: self;
			state: aBoolean; 
			yourself)