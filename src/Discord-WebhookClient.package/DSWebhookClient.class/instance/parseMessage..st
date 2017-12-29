parsing
parseMessage: aZnStringEntity 
	| message |
	message := DSModelJsonMapping
		read: DSMessage
		withMapping: #messageMappingFor:
		on: aZnStringEntity contents readStream.
	^ message