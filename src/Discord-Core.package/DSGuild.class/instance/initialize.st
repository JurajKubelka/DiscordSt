initialization
initialize
	super initialize.
	restApi := DSRestBasic uniqueInstance.
	channels := self newChannels.
	members := self newMembers.