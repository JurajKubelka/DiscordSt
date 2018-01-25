defaults - url
guildMembersUrlForId: snowflake
	"Return Discord API URL to ask for list of guild members.
	snowflake is a Guild Id.
	See https://discordapp.com/developers/docs/resources/guild#list-guild-members" 
	^ self guildsUrl / snowflake asString / 'members'