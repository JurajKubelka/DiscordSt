tests
testEmbeds
	message := self newMessage.
	message embeds: self newEmptyArray.
	self assert: message embeds equals: self newEmptyArray.