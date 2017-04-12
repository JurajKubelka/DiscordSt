tests
testContent2
	object := DSWebhookPost new content: self contentObject; yourself.
	self assert: object content equals: self contentObject asString.