tests
testType
	channel := self newChannel.
	channel type: self correctType.
	self assert: channel type equals: self correctType.