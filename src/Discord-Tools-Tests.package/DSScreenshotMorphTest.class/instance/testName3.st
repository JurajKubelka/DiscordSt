tests
testName3
	morph := self classToTest new.
	morph screenshot: SystemWindow new.
	self assert: morph name isString.
	self deny: morph name size isZero.
	self 
		assert: morph submorphs first labelMorph contents
		equals: morph name.