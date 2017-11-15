tests
testPrintString
	process := self newGatewayProcess.
	self assert: process printString isNotEmpty