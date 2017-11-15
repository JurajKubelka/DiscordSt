tests
testTopic
	channel := self newChannel.
	channel topic: self anyString.
	self assert: channel topic equals: self anyString.