tests
testHasImageAttachments
	message := self newMessage.
	message attachments: (Array with: (self newAttachment 
		url: 'http://example.com/image.png'; width: 512; height: 321; yourself)).
	self assert: message hasImageAttachments.