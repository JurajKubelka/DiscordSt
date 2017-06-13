tests
testFileSize
	attachment := self newAttachment.
	attachment fileSize: 42.
	self assert: attachment fileSize equals: 42.