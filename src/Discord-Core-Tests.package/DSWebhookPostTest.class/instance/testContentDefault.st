tests
testContentDefault
	object := DSWebhookPost new.
	self assert: object content isNil.