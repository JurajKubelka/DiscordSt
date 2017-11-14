tests
testIsTextToSpeech2
	message := self newMessage.
	message isTextToSpeech: false.
	self deny: message isTextToSpeech