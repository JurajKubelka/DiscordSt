initialization
initialize
	super initialize.
	announcer := self newAnnouncer.
	continue := true.
	rectangle := nil.
	isRectangleRequested := false.
	writer := nil.
	isRecording := false.