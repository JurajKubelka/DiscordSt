initialization
initialize
	super initialize.
	announcer := self newAnnouncer.
	continue := true.
	rectangle := nil.
	step := self newStep.
	writer := nil