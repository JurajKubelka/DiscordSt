public
sendJsonMessage: aDSClientJsonPost toGuildTextOrDMChannelId: channelId 
	"Send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	| response |
	response := self newZnClientAuthenticated
		url: (self channelMessagesUrlForId: channelId);
		entity: (ZnEntity text: (DSJSONApiWriter toString: aDSClientJsonPost));
		contentType: ZnMimeType applicationJson;
		post;
		response.
	^ response isSuccess
		ifTrue: [ DSMessage fromJsonString: response contents api: self ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]