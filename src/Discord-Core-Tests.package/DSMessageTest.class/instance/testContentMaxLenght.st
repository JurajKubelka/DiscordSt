tests
testContentMaxLenght
	| content |
	message := self newMessage.
	content := String loremIpsum: DSConstants maxMessageLenght.
	message content: content.
	self assert: message content equals: content.
	self assert: message hasContent.