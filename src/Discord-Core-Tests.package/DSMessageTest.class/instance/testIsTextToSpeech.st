tests
testIsTextToSpeech
	message := self newMessage.
	message isTextToSpeech: true.
	self assert: message isTextToSpeech