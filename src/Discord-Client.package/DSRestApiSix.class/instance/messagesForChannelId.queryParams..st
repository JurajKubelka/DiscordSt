private - communication
messagesForChannelId: channelId queryParams: associations
	"Returns the messages for a channel. If operating on a guild channel, 
	this endpoint requires the 'READ_MESSAGES' permission to be present on the current user. 
	Returns an array of message objects on success.
	associations can include:
		around -> snowflake message id
		before -> snowflake message id
		after  -> snowflake message id
		limit  -> integer representing max number of messages to return (1-100, default 50)
		around, before, after are mutually exclusive.
	See https://discordapp.com/developers/docs/resources/channel#get-channel-messages"
	| url response |
	url := self channelMessagesUrlForId: channelId.
	url queryAddAll: associations.
	response := (self newZnClientAuthenticated)
		url: url;
		get;
		response.
	^ response isSuccess 
		ifTrue: [ | messages |
			messages := DSModelJsonMapping 
				read: #CollectionOfMessages 
				withMapping: #collectionOfMessagesMappingFor:
				on: response contents readStream.
			messages do: [ :eachMessage | eachMessage restApi: self ].
			messages ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]