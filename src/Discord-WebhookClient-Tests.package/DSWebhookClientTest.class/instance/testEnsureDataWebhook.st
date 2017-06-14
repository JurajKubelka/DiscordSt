tests
testEnsureDataWebhook
	client := DSWebhookClient new.
	self assert: client ensureDataWebhook class equals: DSWebhookDataPost.
	self assert: client ensureDataWebhook == client ensureDataWebhook.
	self assert: client ensureWebhook == client ensureWebhook.