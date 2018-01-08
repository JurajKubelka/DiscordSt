private - communication
membersOfGuildId: guildId
	"Returns a list of guild member objects that are members of the guild.
	See https://discordapp.com/developers/docs/resources/guild#list-guild-members"

	| response url |
	url := self guildMembersUrlForId: guildId.
	response := self newZnClientAuthenticated
		url: url;
		get;
		response.
	^ response isSuccess
		ifTrue: [ self parseGuildMembers: response ]
		ifFalse: [ DSUnauthorizedOperationError new
				response: response;
				signal: response contents ]