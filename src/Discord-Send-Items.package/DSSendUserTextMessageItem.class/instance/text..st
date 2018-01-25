accessing
text: aStringOrText
	text = aStringOrText ifTrue: [ ^ self ].
	text := aStringOrText.
	self announcer announce: (DSSendItemContentChangedAnnouncement new
		item: self;
		changedContent: aStringOrText;
		yourself)