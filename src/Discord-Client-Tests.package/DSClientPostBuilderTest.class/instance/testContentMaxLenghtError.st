test - protocol - basic
testContentMaxLenghtError
	| content |
	content := (String loremIpsum: DSConstants maxMessageLenght + 1).
	builder := self newInstanceToBeTested.
	self should: [ builder content: content ] raise: DSLongMessageError.
	self assert: builder post content equals: nil.