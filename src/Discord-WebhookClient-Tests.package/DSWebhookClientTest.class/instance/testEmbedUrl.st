tests - embed
testEmbedUrl
	client := self classToTest new
		embedUrl: self anyString;
		yourself.
	self assert: client post embeds isCollection.
	self assert: client post embeds size equals: 1.
	self assert: client post embeds first url equals: self anyString.