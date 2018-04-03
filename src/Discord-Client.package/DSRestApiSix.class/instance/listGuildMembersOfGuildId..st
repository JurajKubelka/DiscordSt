public
listGuildMembersOfGuildId: guildId
	"Returns a list of guild member objects that are members of the guild.
	See https://discordapp.com/developers/docs/resources/guild#list-guild-members"

	| params |
	params := Dictionary new
		at: 'limit' put: 1000 asString; 
		yourself.

	^ self listGuildMembersOfGuildId: guildId queryParams: params