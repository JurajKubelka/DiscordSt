tests
testEventData
	object := self newGatewayObject.
	object eventData: self anyString.
	self assert: object eventData equals: self anyString.