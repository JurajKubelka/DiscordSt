tests - embed
testEmbedFooterIconUrl
	client := self classToTest new
		embedFooterIconUrl: self anyString;
		yourself.
	self assert: client post embeds isCollection.
	self assert: client post embeds size equals: 1.
	self assert: client post embeds first footer iconUrl equals: self anyString.