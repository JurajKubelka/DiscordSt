instance creation
testDispatchPayload
	payload := self gatewayPayloadClass fromJsonString: self dispatchMessageCreatePayloadString.
	self assert: payload isDispatch.
	self assert: payload code equals: 0.
	self assert: payload eventName equals: 'MESSAGE_CREATE'.
	self assert: payload sequence equals: 5.
	self assert: payload eventData isMessage.
	self 
		assert: payload eventData content 
		equals: 'Message sent from the test case DSClientWithResourceTest>>#testSendTo at 2017-06-12T09:34:24.550686+00:00'.