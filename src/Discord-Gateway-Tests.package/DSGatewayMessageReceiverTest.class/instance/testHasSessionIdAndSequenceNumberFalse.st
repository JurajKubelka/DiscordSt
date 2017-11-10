tests
testHasSessionIdAndSequenceNumberFalse
	receiver := self newMessageReceiver.
	receiver 
		api: self newGateway;
		sessionId: self anyString.
	self deny: receiver hasSessionIdAndSequenceNumber
	