tests
testWidth
	attachment := self newAttachment.
	attachment width: 42.
	self assert: attachment width equals: 42.