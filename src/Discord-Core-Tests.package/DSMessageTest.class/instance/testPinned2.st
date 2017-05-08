tests
testPinned2
	message := self newMessage.
	message pinned: false.
	self deny: message pinned