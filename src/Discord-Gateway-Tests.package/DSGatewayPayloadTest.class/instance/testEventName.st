tests
testEventName
	object := self newGatewayObject.
	object eventName: self anyString.
	self assert: object eventName equals: self anyString.