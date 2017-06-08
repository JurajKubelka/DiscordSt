tests
testCode
	object := self newGatewayObject.
	object code: self anyString.
	self assert: object code equals: self anyString.