tests
testName
	channel := self newChannel.
	channel name: self anyString.
	self assert: channel name equals: self anyString.