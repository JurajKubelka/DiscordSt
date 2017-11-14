tests
testHasMentionEveryone
	message := self newMessage.
	message hasMentionEveryone: true.
	self assert: message hasMentionEveryone