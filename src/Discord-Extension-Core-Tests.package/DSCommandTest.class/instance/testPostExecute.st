tests
testPostExecute
	| counter extension receivedCommand |
	command := self newObject.
	counter := 0.
	extension := self newCommandExtension.
	extension postExecutionBlock: [ :aCommand | receivedCommand := command. counter := counter + 1 ].
	command addExtension: extension.
	command postExecute.
	self assert: receivedCommand == command.
	self assert: counter equals: 1.