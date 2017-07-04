tests
testSignalProgressDefault
	builder := self newInstanceToBeTested.
	self deny: builder signalProgress.
