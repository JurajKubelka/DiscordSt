initialization
initialize
	super initialize.
	announcer := self newAnnouncer.
	restApi := self newRestApi.
	gateway := self newGateway
		session: self session;
		announcer: self announcer;
		yourself