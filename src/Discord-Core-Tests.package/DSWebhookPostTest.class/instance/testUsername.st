tests
testUsername
	object := DSWebhookPost new username: self username; yourself.
	self assert: object username equals: self username.