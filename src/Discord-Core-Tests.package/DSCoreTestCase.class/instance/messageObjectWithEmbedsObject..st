accessing - objects
messageObjectWithEmbedsObject: aRestApi
	| message |
	message := DSModelJsonMapping 
		read: DSMessage withMapping: #messageMappingFor: on: self messageObjectWithEmbedsString readStream.
	^ message 
		restApi: aRestApi; 
		yourself