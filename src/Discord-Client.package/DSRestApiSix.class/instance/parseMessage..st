private - parsing
parseMessage: response
	| message |
	message := DSModelJsonMapping
		read: DSMessage
		withMapping: #messageMappingFor:
		on: response contents readStream.
	message restApi: self.
	^ message