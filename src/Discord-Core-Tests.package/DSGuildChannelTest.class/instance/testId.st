tests
testId
	channel := self newChannel.
	channel id: self anyString.
	self assert: channel id equals: self anyString.