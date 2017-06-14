tests
testTextToSpeech
	post := self newPost.
	self assert: post textToSpeech isNil
