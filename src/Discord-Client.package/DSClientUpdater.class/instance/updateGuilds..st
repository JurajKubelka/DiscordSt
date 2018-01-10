private - updating
updateGuilds: aDSGuilds 
	aDSGuilds do: [ :eachGuild | 
		eachGuild restApi: self client restApi.
		eachGuild channels allChannelsDo: [ :eachChannel | 
			eachChannel restApi: self client restApi ] ].
	self client guilds: aDSGuilds.