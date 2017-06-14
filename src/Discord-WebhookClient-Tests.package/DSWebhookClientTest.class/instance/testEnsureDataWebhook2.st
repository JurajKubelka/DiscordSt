tests
testEnsureDataWebhook2
	client := DSWebhookClient new.
	client webhook: client newJSONWebhook.
	self assert: client ensureDataWebhook class equals: DSWebhookDataPost.
	self assert: client ensureWebhook == client ensureWebhook.