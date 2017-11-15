test - protocol - basic
testNonce
	builder := self newInstanceToBeTested 
		nonce: self anyString;
		yourself.
	self assert: builder post nonce equals: self anyString.