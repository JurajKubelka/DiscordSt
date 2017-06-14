tests
testSetTextToSpeech
	post := self newPost setTextToSpeech; yourself.
	self assert: post textToSpeech
