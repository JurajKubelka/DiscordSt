tests - embed
testEmbedImageUrl
	client := self classToTest new
		embedImageUrl: self anyString;
		yourself.
	self assert: client post embeds isCollection.
	self assert: client post embeds size equals: 1.
	self assert: client post embeds first image url equals: self anyString.