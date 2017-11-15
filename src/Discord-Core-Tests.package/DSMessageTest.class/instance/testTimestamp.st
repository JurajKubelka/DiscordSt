tests
testTimestamp
	message := self newMessage.
	message timestamp: self newDateAndTime.
	self assert: message timestamp equals: self newDateAndTime.