tests
testUsernameDefault
	object := DSWebhookPost new.
	self assert: object username isNil