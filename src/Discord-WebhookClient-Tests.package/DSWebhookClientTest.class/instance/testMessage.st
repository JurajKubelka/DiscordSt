tests
testMessage
	client := DSWebhookClient new message: self messageString.
	self assert: client webhook content equals: self messageString.