instance creation
testReadyEvent
	payload := self gatewayPayloadClass fromJsonString: self readyEventMessageString.
	self assert: payload isDispatch.
	self assert: payload code equals: 0.
	self assert: payload eventName equals: 'READY'.
	self assert: payload sequence equals: 1.
	self assert: payload isReadyPayload.
	