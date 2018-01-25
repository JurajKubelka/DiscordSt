tests
testPrintString
	info := self classToTest new.
	self assert: info printString isString.