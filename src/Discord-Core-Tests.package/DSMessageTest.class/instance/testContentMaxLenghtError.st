tests
testContentMaxLenghtError
	"It should produce an error because of maximum lenght."
	| content |
	message := self newMessage.
	content := String loremIpsum: DSConstants maxMessageLenght + 1.
	self should: [ message content: content ] raise: DSLongMessageError.
	self assert: message content equals: nil.
	self deny: message hasContent.