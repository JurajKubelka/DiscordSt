tests
testUnsetTextToSpeech
	post := self newPost unsetTextToSpeech; yourself.
	self deny: post textToSpeech
