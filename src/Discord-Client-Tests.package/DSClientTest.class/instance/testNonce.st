tests
testNonce
	client := self newClient nonce: self anyString.
	self assert: client post nonce equals: self anyString.