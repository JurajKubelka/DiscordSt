initialization
initialize
	super initialize.
	announcer := self newAnnouncer.
	restApi := self newInitializedRestApi.
	gateway := self newInitializedGateway.
	me := self newUser.
	guilds := self newGuilds.
	privateChannels := self newChannels.
	updater := self newClientUpdater.
	updater client: self.