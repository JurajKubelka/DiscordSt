*Discord-Extension-Core-Tests
testHasFuelAttachments
	message := self newMessage.
	message attachments: (Array with: (self newAttachment 
		url: 'http://example.com/data.fuel'; yourself)).
	self assert: message hasFuelAttachments.