public accessing
guildChannelsUsingId: guildId
	"Returns a list of guild channel objects.
	See https://discordapp.com/developers/docs/resources/guild#get-guild-channels"
	| response |
	response := (self newZnClientAuthenticated)
		url: (self guildChannelsUrlForId: guildId);
		get;
		response.
	^ response isSuccess 
		ifTrue: [ | channels |
			channels := DSModelJsonMapping 
				read: #CollectionOfSortedChannels 
				withMapping: #collectionOfSortedChannelsMappingFor:
				on: response contents readStream.
			channels do: [ :eachChannel | eachChannel restApi: self ].
			channels ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]