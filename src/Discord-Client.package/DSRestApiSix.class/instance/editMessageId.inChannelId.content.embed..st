public
editMessageId: messageId inChannelId: channelId content: contentString embed: embedObject
	"Edit a previously sent message. 
	You can only edit messages that have been sent by the current user. 
	Returns a message object. Fires a Message Update Gateway event.
	See https://discordapp.com/developers/docs/resources/channel#edit-message"
	| response url |
	url := self channelMessageUrlForId: messageId andChannelId: channelId.
	response := self newZnClientAuthenticated
		url: url;
		entity: (ZnEntity text: (self editMessagePayloadForContent: contentString embed: embedObject));
		contentType: ZnMimeType applicationJson;
		patch;
		response.
	^ response isSuccess
		ifTrue: [ self parseMessage: response ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]