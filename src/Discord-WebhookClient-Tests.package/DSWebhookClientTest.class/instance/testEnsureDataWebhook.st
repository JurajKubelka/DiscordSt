tests
testEnsureDataWebhook
	client := DSWebhookClient new.
	self assert: client ensureDataWebhook class equals: DSDataWebhookPost.
	self assert: client ensureWebhook == client ensureWebhook.