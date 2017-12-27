tests
testTwoRandomMorphs
	morph := self classToTest twoRandomMorphs.
	self assert: morph submorphs size equals: 3.