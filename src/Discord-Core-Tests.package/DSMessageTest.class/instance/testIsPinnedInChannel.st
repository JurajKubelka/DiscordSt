tests
testIsPinnedInChannel
	message := self newMessage.
	message isPinnedInChannel: true.
	self assert: message isPinnedInChannel