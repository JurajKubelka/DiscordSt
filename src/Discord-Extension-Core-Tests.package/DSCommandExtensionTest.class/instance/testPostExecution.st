tests
testPostExecution
	| result |
	command := self newCommand.
	extension := self newExtension.
	extension postExecutionBlock: [ result := 42 ].
	extension postExecution: command.
	self assert: result equals: 42.