initialization
initialize
	super initialize.
	restApi := self newRestApi.
	announcer := self newAnnouncer.