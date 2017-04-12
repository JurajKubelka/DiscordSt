tests
testAvatarUrl
	object := DSWebhookPost new avatarUrl: self avatarUrl; yourself.
	self assert: object avatarUrl equals: self avatarUrl.