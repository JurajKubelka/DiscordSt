public - user
guilds
	<return: #DSGuilds of: #DSGuild>
	^ self catchDiscordErrorDuring: [ | guilds |
		guilds := self restApi guilds.
		guilds do: [ :eachGuild | eachGuild restApi: self ].
		self announce: (DSGuildsAnnouncement new guilds: guilds; yourself).
		guilds ]