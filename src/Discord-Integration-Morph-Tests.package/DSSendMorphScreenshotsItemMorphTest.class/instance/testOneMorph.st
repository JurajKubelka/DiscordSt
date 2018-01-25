tests
testOneMorph
	morph := self classToTest randomMorph.
	self assert: morph submorphs size equals: 2.