initialization
initialize
	super initialize.
	announcer := self newAnnouncer.
	restApi := self newInitializedRestApi.
	gateway := self newInitializedGateway.