tests
testAddExtension
	| extension |
	command := self newObject.
	extension := self newCommandExtension.
	command addExtension: extension.
	self assertCollection: command extensions asArray equals: { extension }.