tests
testHasSessionIdAndSequenceNumberFalse2
	receiver := self newMessageReceiver.
	receiver 
		api: self newGateway;
		sequenceNumber: 42.
	self deny: receiver hasSessionIdAndSequenceNumber
	