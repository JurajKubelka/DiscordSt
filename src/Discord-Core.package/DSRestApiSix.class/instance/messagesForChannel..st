public
messagesForChannel: channelId 
	"Returns the messages for a channel. If operating on a guild channel, 
	this endpoint requires the 'READ_MESSAGES' permission to be present on the current user. 
	Returns an array of message objects on success.
	See https://discordapp.com/developers/docs/resources/channel#get-channel-messages"
	| url response |
	url := self channelMessagesUrlForId: channelId.
	response := (self newZnClientAuthenticated)
		url: url;
		get;
		response.
	^ response isSuccess 
		ifTrue: [ DSMessage collectionFromJsonString: response contents api: self ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]