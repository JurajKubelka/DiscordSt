private - communication
listGuildMembersOfGuildId: guildId queryParams: associations
	"Returns a list of guild member objects that are members of the guild.
	See https://discordapp.com/developers/docs/resources/guild#list-guild-members
	
	Field	Type	Description	Default
	limit	integer	max number of members to return (1-1000)	1
	after	snowflake	the highest user id in the previous page	0
	"

	| response url |
	url := self guildMembersUrlForId: guildId.
	url queryAddAll: associations.
	response := self newZnClientAuthenticated
		url: url;
		get;
		response.
	^ response isSuccess
		ifTrue: [ self parseGuildMembers: response ]
		ifFalse: [ DSUnauthorizedOperationError new
				response: response;
				signal: response contents ]