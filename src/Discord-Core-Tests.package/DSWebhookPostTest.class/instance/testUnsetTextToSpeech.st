tests
testUnsetTextToSpeech
	object := DSWebhookPost new unsetTextToSpeech; yourself.
	self deny: object textToSpeech