public
sendJsonMessage: aDSClientJsonPost toGuildTextOrDMChannelId: channelId signalProgress: aBoolean
	"Send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#create-message"

	| response url entity |
	url := self channelMessagesUrlForId: channelId.
	entity := DSPostToEntityCommand new
		post: aDSClientJsonPost;
		execute;
		entity.
	entity contentType: ZnMimeType applicationJson.
	response := self newZnClientAuthenticated
		url: url;
		signalProgress: aBoolean;
		entity: entity;
		post;
		response.
	^ response isSuccess
		ifTrue: [ self parseMessage: response ]
		ifFalse: [ DSUnauthorizedOperationError new
				response: response;
				signal: response contents ]