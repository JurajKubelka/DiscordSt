tests
testNonce
	post := self newPost nonce: self anyString; yourself.
	self assert: post nonce equals: self anyString.