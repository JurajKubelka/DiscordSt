tests
testIdToken
	client := DSWebhookClient new id: self webhookId token: self webhookToken.
	self assert: client url equals: self url asZnUrl ? ('wait' -> false).