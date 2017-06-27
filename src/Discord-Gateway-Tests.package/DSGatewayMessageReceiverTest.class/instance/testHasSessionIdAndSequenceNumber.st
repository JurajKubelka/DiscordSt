tests
testHasSessionIdAndSequenceNumber
	receiver := self newMessageReceiver.
	receiver 
		api: self newGatewayApi;
		sequenceNumber: 42;
		sessionId: self anyString.
	self assert: receiver hasSessionIdAndSequenceNumber
	