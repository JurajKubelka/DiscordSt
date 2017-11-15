defaults - url
guildChannelsUrlForId: snowflake 
	"Return Discord API URL to ask for guild channels.
	snowflake is an Guild Id.
	See https://discordapp.com/developers/docs/resources/guild#get-guild-channels"
	^ self guildsUrl / snowflake asString / 'channels'