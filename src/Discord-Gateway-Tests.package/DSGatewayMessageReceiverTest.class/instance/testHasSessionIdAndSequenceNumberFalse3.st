tests
testHasSessionIdAndSequenceNumberFalse3
	receiver := self newMessageReceiver.
	receiver api: self newGatewayApi.
	self deny: receiver hasSessionIdAndSequenceNumber
	