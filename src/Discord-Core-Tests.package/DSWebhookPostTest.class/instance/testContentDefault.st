tests
testContentDefault
	object := DSWebhookPost new.
	self assert: object content size equals: 0.
	self assert: object content isString.