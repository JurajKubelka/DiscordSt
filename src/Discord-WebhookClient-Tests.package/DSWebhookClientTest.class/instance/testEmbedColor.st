tests - embed
testEmbedColor
	client := self classToTest new
		embedColor: self color;
		yourself.
	self assert: client post embeds isCollection.
	self assert: client post embeds size equals: 1.
	self assert: client post embeds first color equals: self color.