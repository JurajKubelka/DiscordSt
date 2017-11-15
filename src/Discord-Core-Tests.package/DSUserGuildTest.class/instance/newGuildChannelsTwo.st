instance creation
newGuildChannelsTwo
	"Return some channels."
	^ { 
		self newTextChannel name: 'general'; id: self anyString; guildId: self anyString; yourself.
		self newTextChannel name: 'sprint'; id: '251136000'; guildId: self anyString; yourself.
		}