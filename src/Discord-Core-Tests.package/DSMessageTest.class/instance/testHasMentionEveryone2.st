tests
testHasMentionEveryone2
	message := self newMessage.
	message hasMentionEveryone: false.
	self deny: message hasMentionEveryone