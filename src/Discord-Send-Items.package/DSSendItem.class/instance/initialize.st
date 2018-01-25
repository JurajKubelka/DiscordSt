initialization
initialize
	super initialize.
	priority := self defaultPriority.
	announcer := self newAnnouncer