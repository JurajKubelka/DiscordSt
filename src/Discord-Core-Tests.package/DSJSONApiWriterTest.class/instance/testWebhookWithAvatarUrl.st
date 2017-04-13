tests
testWebhookWithAvatarUrl
	object := DSWebhookPost new avatarUrl: self anyString; yourself.
	json := DSJSONApiWriter toString: object.
	self assert: json equals: '{"avatar_url":"any string"}'.