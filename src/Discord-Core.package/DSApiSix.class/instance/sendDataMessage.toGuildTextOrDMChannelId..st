public
sendDataMessage: aDSClientDataPost toGuildTextOrDMChannelId: channelId 
	"Send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	| url response |
	url := self channelMessagesUrlForId: channelId.
	response := self newZnClientAuthenticated
		url: url;
		entity: (DSDataApiWriter toMultiPartDataFormEntity: aDSClientDataPost);
		post;
		response.
	^ response isSuccess
		ifTrue: [ DSMessage fromJsonString: response contents api: self ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]