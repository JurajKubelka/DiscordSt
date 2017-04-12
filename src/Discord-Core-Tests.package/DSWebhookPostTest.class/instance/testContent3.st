tests
testContent3
	object := DSWebhookPost new content: self contentLongString; yourself.
	self assert: object content size equals: DSWebhookPost contentLimit.