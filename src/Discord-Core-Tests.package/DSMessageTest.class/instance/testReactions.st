tests
testReactions
	message := self newMessage.
	message reactions: self newEmptyArray.
	self assert: message reactions equals: self newEmptyArray.