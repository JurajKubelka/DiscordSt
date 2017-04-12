tests
testSetTextToSpeech
	object := DSWebhookPost new setTextToSpeech; yourself.
	self assert: object textToSpeech