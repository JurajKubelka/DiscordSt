public - guild
membersOfGuild: aGuild
	"Returns a list of guild member objects that are members of the guild.
	See https://discordapp.com/developers/docs/resources/guild#list-guild-members"
	<return: #DSMembers of: #DSMember>
	^ self subclassResponsibility