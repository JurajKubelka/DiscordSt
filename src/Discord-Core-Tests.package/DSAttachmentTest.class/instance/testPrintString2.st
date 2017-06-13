tests
testPrintString2
	attachment := self newAttachment.
	attachment filename: self anyString; height: 32; width: 32.
	self assert: attachment printString isString.