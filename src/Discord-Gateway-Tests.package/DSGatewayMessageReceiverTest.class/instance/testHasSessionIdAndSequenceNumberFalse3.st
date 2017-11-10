tests
testHasSessionIdAndSequenceNumberFalse3
	receiver := self newMessageReceiver.
	receiver api: self newGateway.
	self deny: receiver hasSessionIdAndSequenceNumber
	