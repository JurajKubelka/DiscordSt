tests
testExtensions
	command := self newObjectToTest.
	self assert: command extensions size equals: 1.
	self assert: command extensions first class equals: DSMockCommandExtension.