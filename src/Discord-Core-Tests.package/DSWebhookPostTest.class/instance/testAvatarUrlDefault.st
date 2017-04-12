tests
testAvatarUrlDefault
	object := DSWebhookPost new.
	self assert: object avatarUrl isNil.