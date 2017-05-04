tests
testPosition
	channel := self newChannel.
	channel position: 1234.
	self assert: channel position equals: 1234.