instance creation
newGuildChannelsInCategory
	"Return some channels."
	^ { 
		self newCategoryChannel 
			name: 'Category One'; id: '251136000'; guildId: self anyString;
			subordinateChannels: {
				self newTextChannel name: 'general'; id: self anyString; guildId: self anyString; yourself.
				self newTextChannel name: 'sprint'; id: '251136000'; guildId: self anyString; yourself }.
		}