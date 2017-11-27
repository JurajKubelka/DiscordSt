tests - embed
testEmbedDescription
	client := self classToTest new
		embedDescription: self anyString;
		yourself.
	self assert: client post embeds isCollection.
	self assert: client post embeds size equals: 1.
	self assert: client post embeds first description equals: self anyString.