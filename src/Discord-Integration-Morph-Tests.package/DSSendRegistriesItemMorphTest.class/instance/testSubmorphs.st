tests
testSubmorphs
	morph := self classToTest new.
	self assert: morph submorphs size equals: 2.