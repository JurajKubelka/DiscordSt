tests
testPreExecution
	| result |
	command := self newCommand.
	extension := self newExtension.
	extension preExecutionBlock: [ result := 42 ].
	extension preExecution: command.
	self assert: result equals: 42.