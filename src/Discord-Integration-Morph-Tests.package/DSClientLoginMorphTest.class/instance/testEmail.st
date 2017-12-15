tests
testEmail
	morph := self classToTest filled.
	self assert: morph email equals: 'contact@example.com'.
	self assert: morph submorphs first getTextFromView equals: 'contact@example.com' asText.
	