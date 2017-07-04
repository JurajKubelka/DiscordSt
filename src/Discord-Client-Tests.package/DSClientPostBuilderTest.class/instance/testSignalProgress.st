tests
testSignalProgress
	builder := self newInstanceToBeTested.
	builder signalProgress: true.
	self assert: builder signalProgress.
