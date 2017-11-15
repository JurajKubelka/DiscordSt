initialization
initialize
	super initialize.
	restApi := self newRestApi.
	gateway := self newGateway
		session: self session;
		announcer: self announcer;
		yourself