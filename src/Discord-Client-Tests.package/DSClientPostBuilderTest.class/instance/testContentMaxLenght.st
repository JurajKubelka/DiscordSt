test - protocol - basic
testContentMaxLenght
	| content |
	content := (String loremIpsum: DSConstants maxMessageLenght).
	builder := self newInstanceToBeTested 
		content: content;
		yourself.
	self assert: builder post content equals: content.