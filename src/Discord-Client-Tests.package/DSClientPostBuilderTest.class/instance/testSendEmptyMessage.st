test - protocol - sending
testSendEmptyMessage
	builder := self newInstanceToBeTested.
	self should: [ builder send ] raise: DSIncorrectValuesError.