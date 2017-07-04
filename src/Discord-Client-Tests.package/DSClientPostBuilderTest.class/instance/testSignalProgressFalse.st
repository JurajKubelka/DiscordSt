tests
testSignalProgressFalse
	builder := self newInstanceToBeTested.
	builder signalProgress: false.
	self deny: builder signalProgress.
