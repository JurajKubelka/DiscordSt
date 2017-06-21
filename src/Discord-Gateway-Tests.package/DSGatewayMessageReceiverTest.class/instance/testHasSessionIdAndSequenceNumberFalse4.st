tests
testHasSessionIdAndSequenceNumberFalse4
	receiver := self newMessageReceiver.
	self deny: receiver hasSessionIdAndSequenceNumber
	