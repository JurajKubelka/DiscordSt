tests
testFilename
	attachment := self newAttachment.
	attachment filename: self anyString.
	self assert: attachment filename equals: self anyString.