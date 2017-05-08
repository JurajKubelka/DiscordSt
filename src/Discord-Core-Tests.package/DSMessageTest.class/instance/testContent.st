tests
testContent
	message := self newMessage.
	message content: self anyString.
	self assert: message content equals: self anyString.