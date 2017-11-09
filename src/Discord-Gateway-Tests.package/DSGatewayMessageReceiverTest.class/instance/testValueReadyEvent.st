tests
testValueReadyEvent
	receiver := self newMessageReceiver.
	receiver api: self newGatewayApi.
	receiver value: DSGatewayModelJsonMapping jsonReadyPayload.
	self assert: receiver api sequenceNumber equals: 1.
	self assert: receiver api sessionId equals: 'e22975'.
	