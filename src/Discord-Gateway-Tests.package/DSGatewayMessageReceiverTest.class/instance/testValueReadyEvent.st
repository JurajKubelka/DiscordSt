tests
testValueReadyEvent
	receiver := self newMessageReceiverInitialized.
	receiver value: self gatewayModelJsonMapping jsonReadyPayload.
	self assert: receiver sequenceNumber equals: 2.
	self assert: receiver sessionId equals: 21.
	