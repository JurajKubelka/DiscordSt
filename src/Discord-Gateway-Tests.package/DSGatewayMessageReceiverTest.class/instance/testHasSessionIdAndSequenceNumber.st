tests
testHasSessionIdAndSequenceNumber
	receiver := self newMessageReceiver.
	receiver 
		api: self newGateway;
		sequenceNumber: 42;
		sessionId: self anyString.
	self assert: receiver hasSessionIdAndSequenceNumber
	