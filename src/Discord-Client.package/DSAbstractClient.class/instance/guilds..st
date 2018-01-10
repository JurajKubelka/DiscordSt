accessing
guilds: aDSGuilds
	"Returns a list of user guild objects the current user is a member of.
	See https://discordapp.com/developers/docs/resources/user#get-current-user-guilds"
	<return: #DSGuilds of: #DSGuild>
	guilds = aDSGuilds ifTrue: [ ^ self ].
	guilds := aDSGuilds.
	aDSGuilds do: [ :eachGuild | 
		eachGuild restApi: self restApi.
		eachGuild channels allChannelsDo: [ :eachChannel | 
			eachChannel restApi: self restApi ] ].
	self announce: (DSClientGuildsChangedAnnouncement new
		client: self;
		guilds: aDSGuilds;
		yourself)