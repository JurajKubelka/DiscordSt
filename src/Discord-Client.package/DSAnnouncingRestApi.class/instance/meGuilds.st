public - user
meGuilds
	<return: #DSGuilds of: #DSGuild>
	^ self catchDiscordErrorDuring: [ | guilds |
		guilds := self restApi meGuilds.
		guilds do: [ :eachGuild | eachGuild restApi: self ].
		self announce: (DSGuildsAnnouncement new guilds: guilds; yourself).
		guilds ]