tests
testDescriptionMaxLenght
	| content |
	content := (String loremIpsum: DSConstants maxMessageLenght).
	object := self newEmbedObject 
		description: content; 
		yourself.
	self assert: object description equals: content.
