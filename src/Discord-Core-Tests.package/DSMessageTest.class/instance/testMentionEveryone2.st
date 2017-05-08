tests
testMentionEveryone2
	message := self newMessage.
	message mentionEveryone: false.
	self deny: message mentionEveryone