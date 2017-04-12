tests
testWebhookWithContent
	object := DSWebhookPost new content: self contentString; yourself.
	json := DSJSONApiWriter toString: object.
	self assert: json equals: '{"content":"message one"}'.