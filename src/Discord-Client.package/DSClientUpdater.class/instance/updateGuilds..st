private - updating
updateGuilds: aDSGuilds 
	aDSGuilds do: [ :eachGuild | 
		eachGuild restApi: self client.
		eachGuild members do: [ :eachMember | eachMember user restApi: self client ].
		eachGuild channels allChannelsDo: [ :eachChannel | 
			eachChannel restApi: self client ] ].
	self client guilds: aDSGuilds.