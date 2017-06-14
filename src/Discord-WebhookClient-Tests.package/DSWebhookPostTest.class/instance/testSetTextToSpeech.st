tests
testSetTextToSpeech
	object := self newPost setTextToSpeech; yourself.
	self assert: object textToSpeech