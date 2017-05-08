tests
testAttachments
	message := self newMessage.
	message attachments: self newEmptyArray.
	self assert: message attachments equals: self newEmptyArray.