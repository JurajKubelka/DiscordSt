tests
testSequence
	object := self newGatewayObject.
	object sequence: self anyString.
	self assert: object sequence equals: self anyString.