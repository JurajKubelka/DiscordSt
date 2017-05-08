helpers
guildChannelsOf: aDSUserGuild 
	"Return some channels."
	^ { 
		self newTextChannel name: 'general'; id: aDSUserGuild id; guildId: aDSUserGuild id; yourself.
		self newTextChannel name: 'sprint'; id: aDSUserGuild id; guildId: aDSUserGuild id; yourself.
		}