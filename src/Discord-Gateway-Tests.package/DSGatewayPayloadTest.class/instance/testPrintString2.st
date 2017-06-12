tests
testPrintString2
	object := self newGatewayObject.
	self assert: object printString isString.
	self assert: object printString equals: 'Payload: {}'.