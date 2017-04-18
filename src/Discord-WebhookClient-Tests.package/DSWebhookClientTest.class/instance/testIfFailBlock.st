tests
testIfFailBlock
	client := DSWebhookClient new.
	self assert: client ifFailBlock isBlock.