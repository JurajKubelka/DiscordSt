tests
testHasSessionIdAndSequenceNumberFalse2
	receiver := self newMessageReceiver.
	receiver 
		api: self newGatewayApi;
		sequenceNumber: 42.
	self deny: receiver hasSessionIdAndSequenceNumber
	