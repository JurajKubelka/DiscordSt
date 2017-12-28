tests
testAddExtension
	| extension |
	command := self newObjectToTest.
	extension := self newCommandExtension.
	command addExtension: extension.
	self assertCollection: command extensions asArray equals: { extension }.