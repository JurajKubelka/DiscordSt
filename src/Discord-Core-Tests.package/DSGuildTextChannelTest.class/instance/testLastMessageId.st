tests
testLastMessageId
	channel := self newChannel.
	channel lastMessageId: self anyString.
	self assert: channel lastMessageId equals: self anyString.