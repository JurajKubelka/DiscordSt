tests
testPrintString
	attachment := self newAttachment.
	self assert: attachment printString isString.