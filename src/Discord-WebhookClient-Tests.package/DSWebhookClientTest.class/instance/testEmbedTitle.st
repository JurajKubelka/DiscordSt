tests - embed
testEmbedTitle
	client := self classToTest new
		embedTitle: self anyString;
		yourself.
	self assert: client post embeds isCollection.
	self assert: client post embeds size equals: 1.
	self assert: client post embeds first title equals: self anyString.