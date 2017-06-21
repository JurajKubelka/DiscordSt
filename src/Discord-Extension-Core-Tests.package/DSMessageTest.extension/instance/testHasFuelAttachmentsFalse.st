*Discord-Extension-Core-Tests
testHasFuelAttachmentsFalse
	message := self newMessage.
	self deny: message hasFuelAttachments.