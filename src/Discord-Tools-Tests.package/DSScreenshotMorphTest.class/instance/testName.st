tests
testName
	morph := self classToTest new.
	self assert: morph name isString.
	self deny: morph name size isZero.
	self 
		assert: morph submorphs first labelMorph contents
		equals: morph name.