tests
testEnsureWebhook
	client := DSWebhookClient new.
	self assert: client ensureWebhook class equals: DSWebhookPost.
	self assert: client ensureWebhook == client ensureWebhook.