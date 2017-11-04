public accessing
messageForId: messageId inChannelId: channelId 
	"Return DSMessage object of a specific id in the specific channel id."
	| url response |
	url := self channelMessageUrlForId: messageId andChannelId: channelId.
	response := (self newZnClientAuthenticated)
		url: url;
		get;
		response.
	^ response isSuccess 
		ifTrue: [ DSMessage fromJsonString: response contents api: self ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]