tests
testPrintString
	client := self newClient.
	self assert: client printString isString.