accessing
text: aStringOrText
	text = aStringOrText ifTrue: [ ^ self ].
	text := aStringOrText.
	self announcer announce: (DSContentChangedAnnouncement new
		object: self;
		state: aStringOrText;
		yourself)