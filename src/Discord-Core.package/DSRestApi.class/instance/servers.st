public - guild
servers
	"Returns a list of user guild objects the current user is a member of.
	See https://discordapp.com/developers/docs/resources/user#get-current-user-guilds"
	<return: #DSGuilds of: #DSGuild>
	^ self meGuilds