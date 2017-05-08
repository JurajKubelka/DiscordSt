tests
testTextToSpeech
	message := self newMessage.
	message textToSpeech: true.
	self assert: message textToSpeech