tests
testMessage
	client := DSWebhookClient new message: self messageString.
	self assert: client webhook class equals: DSWebhookPost.
	self assert: client webhook content equals: self messageString.