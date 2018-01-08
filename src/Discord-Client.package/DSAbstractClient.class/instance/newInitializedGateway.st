instance creation
newInitializedGateway
	^ self newGateway
		session: self session;
		announcer: self announcer;
		yourself