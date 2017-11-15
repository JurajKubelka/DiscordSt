tests
testPrintProcessName
	process := self newGatewayProcess.
	self assert: process printProcessName isNotEmpty