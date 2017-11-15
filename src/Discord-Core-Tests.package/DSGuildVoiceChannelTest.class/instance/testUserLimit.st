tests
testUserLimit
	channel := self newChannel.
	channel userLimit: 1234.
	self assert: channel userLimit equals: 1234.