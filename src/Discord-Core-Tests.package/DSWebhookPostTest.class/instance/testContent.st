tests
testContent
	object := DSWebhookPost new content: self contentString; yourself.
	self assert: object content equals: self contentString.