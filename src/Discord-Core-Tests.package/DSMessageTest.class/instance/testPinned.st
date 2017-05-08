tests
testPinned
	message := self newMessage.
	message pinned: true.
	self assert: message pinned