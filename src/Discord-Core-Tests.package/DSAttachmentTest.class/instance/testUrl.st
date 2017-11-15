tests
testUrl
	attachment := self newAttachment.
	attachment url: self anyString.
	self assert: attachment url equals: self anyString.