tests
testTextToSpeech2
	message := self newMessage.
	message textToSpeech: false.
	self deny: message textToSpeech