tests
testMentionEveryone
	message := self newMessage.
	message mentionEveryone: true.
	self assert: message mentionEveryone