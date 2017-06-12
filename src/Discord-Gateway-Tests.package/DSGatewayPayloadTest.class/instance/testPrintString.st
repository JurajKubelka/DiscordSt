tests
testPrintString
	object := self newGatewayObject.
	object code: 3; eventData: 6; eventName: 'EVENT_NAME'; sequence: 9.
	self assert: object printString isString.
	self assert: object printString equals: 'Payload: {"op":3,"d":6,"s":9,"t":"EVENT_NAME"}'.