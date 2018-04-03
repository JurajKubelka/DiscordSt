accessing
discordClientToken
	self ensureVolatileDiscordClientToken.
	^ DSClientToken value