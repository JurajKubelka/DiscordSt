tests - embed
testEmbedFooterText
	client := self classToTest new
		embedFooterText: self anyString;
		yourself.
	self assert: client post embeds isCollection.
	self assert: client post embeds size equals: 1.
	self assert: client post embeds first footer text equals: self anyString.