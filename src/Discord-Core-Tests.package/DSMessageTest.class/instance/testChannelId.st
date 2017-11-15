tests
testChannelId
	message := self newMessage.
	message channelId: self anyString.
	self assert: message channelId equals: self anyString.