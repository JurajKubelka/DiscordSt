tests
testHasSessionIdAndSequenceNumberFalse
	receiver := self newMessageReceiver.
	receiver 
		api: self newGatewayApi;
		sessionId: self anyString.
	self deny: receiver hasSessionIdAndSequenceNumber
	