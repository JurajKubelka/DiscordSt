public - user
directChannels
	"Return collection of dirrect channels.
	See https://discordapp.com/developers/docs/resources/user#get-user-dms"
	<return: #DSChannels of: #DSDirectMessageChannel>
	| response |
	response := self newZnClientAuthenticated
		url: self usersMeChannelsUrl;
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
	