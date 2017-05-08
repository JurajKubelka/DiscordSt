tests
testId
	message := self newMessage.
	message id: self anyString.
	self assert: message id equals: self anyString.