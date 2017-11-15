tests
testWebhookId
	message := self newMessage.
	message webhookId: self anyString.
	self assert: message webhookId equals: self anyString.