tests
testItemDefault
	morph := self classToTest new.
	self assert: morph item notNil.