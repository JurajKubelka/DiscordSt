initialization
initialize
	super initialize.
	announcer := self newAnnouncer.
	continue := true.
	rectangle := nil.
	isRectangleRequested := false.
	step := self newStep.
	writer := nil