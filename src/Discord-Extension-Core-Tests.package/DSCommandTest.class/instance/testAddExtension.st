tests
testAddExtension
	| extension |
	command := self newCommand.
	extension := self newCommandExtension.
	command addExtension: extension.
	self assertCollection: command extensions asArray equals: { extension }.