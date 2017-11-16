tests
testPreExecute
	| counter extension receivedCommand |
	command := self newObjectToTest.
	counter := 0.
	extension := self newCommandExtension.
	extension preExecutionBlock: [ :aCommand | receivedCommand := command. counter := counter + 1 ].
	command addExtension: extension.
	command preExecute.
	self assert: receivedCommand == command.
	self assert: counter equals: 1.