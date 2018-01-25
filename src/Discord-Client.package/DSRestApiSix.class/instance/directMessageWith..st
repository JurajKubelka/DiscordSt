public - user
directMessageWith: aDSUser 
	| response entity |
	entity := ZnEntity text: (self class jsonMappingClass
		write: aDSUser mappedTo: #recipientMappingFor:).
	entity contentType: ZnMimeType applicationJson.
	response := self newZnClientAuthenticated
		url: self usersMeChannelsUrl;
		entity: entity;
		post;
		response.
	^ response isSuccess 
		ifTrue: [ | channel |
			channel := DSModelJsonMapping 
				read: DSDirectMessageChannel 
				withMapping: #guildDMChannelMappingFor:
				on: response contents readStream.
			channel restApi: self.
			channel ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]
	