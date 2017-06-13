tests
testHeight
	attachment := self newAttachment.
	attachment height: 42.
	self assert: attachment height equals: 42.