tests
testEnsureWebhook
	client := DSWebhookClient new.
	self assert: client ensureWebhook class equals: DSWebhookJsonPost.
	self assert: client ensureWebhook == client ensureWebhook.