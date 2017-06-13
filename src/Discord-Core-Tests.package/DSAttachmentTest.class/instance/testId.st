tests
testId
	attachment := self newAttachment.
	attachment id: self anyString.
	self assert: attachment id equals: self anyString.