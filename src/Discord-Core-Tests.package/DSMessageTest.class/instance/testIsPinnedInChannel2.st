tests
testIsPinnedInChannel2
	message := self newMessage.
	message isPinnedInChannel: false.
	self deny: message isPinnedInChannel