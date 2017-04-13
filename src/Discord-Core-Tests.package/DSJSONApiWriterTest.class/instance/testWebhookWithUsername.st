tests
testWebhookWithUsername
	object := DSWebhookPost new username: self anyString; yourself.
	json := DSJSONApiWriter toString: object.
	self assert: json equals: '{"username":"any string"}'.