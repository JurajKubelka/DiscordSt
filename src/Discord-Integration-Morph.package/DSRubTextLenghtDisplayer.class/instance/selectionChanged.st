event handling
selectionChanged
	self exceedsMessageLenghtLimit ifTrue: [ self updateContents ].
	super selectionChanged