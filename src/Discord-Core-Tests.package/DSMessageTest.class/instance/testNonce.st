tests
testNonce
	message := self newMessage.
	message nonce: self anyString.
	self assert: message nonce equals: self anyString.