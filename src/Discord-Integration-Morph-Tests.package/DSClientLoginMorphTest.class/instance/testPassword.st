tests
testPassword
	morph := self classToTest filled.
	self assert: morph password value equals: 'secret password'.
	self assert: morph submorphs second getTextFromView equals: 'secret password' asText.
	