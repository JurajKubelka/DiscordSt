tests
testTextModel
	morph := self classToTest new.
	self assert: morph textModel getString isEmpty.