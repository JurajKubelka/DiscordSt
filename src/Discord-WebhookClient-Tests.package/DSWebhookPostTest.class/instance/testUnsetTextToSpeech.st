tests
testUnsetTextToSpeech
	object := self newPost unsetTextToSpeech; yourself.
	self deny: object textToSpeech