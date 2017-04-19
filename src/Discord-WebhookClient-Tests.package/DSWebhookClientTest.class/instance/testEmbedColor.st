tests - embed
testEmbedColor
	client := DSWebhookClient new
		embedColor: self color;
		yourself.
	self assert: client webhook embeds isCollection.
	self assert: client webhook embeds size equals: 1.
	self assert: client webhook embeds first color equals: self color.