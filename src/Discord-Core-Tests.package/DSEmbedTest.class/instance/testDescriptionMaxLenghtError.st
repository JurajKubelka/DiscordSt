tests
testDescriptionMaxLenghtError
	| content |
	content := (String loremIpsum: DSConstants maxMessageLenght + 1).
	object := self newEmbedObject.
	self should: [ object description: content ] raise: DSLongMessageError.
	self assert: object description equals: nil.