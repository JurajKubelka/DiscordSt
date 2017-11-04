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
		ifTrue: [
			DSModelJsonMapping 
				read: #CollectionOfChannels 
				withMapping: #collectionOfChannelsMappingFor:
				on: response contents readStream ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]