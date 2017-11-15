tests
testHasAttachments
	message := self newMessage.
	self deny: message hasAttachments.