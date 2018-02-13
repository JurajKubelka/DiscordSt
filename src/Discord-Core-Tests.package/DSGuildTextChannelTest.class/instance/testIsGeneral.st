tests
testIsGeneral
	channel := self newChannel.
	channel name: 'general'; yourself.
	self assert: channel isGeneral