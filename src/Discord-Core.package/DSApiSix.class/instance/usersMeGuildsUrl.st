defaults - api
usersMeGuildsUrl
	"Return Discord API URL to ask for user guilds objects the authenticated user is a member of.
	See https://discordapp.com/developers/docs/resources/user#get-current-user-guilds"
	^ self usersMeUrl / 'guilds'