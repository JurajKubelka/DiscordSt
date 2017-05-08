tests
testMentions
	message := self newMessage.
	message mentions: self newEmptyArray.
	self assert: message mentions equals: self newEmptyArray.