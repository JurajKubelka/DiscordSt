tests - embed
testEmbedTitle
	client := DSWebhookClient new
		embedTitle: self anyString;
		yourself.
	self assert: client webhook embeds isCollection.
	self assert: client webhook embeds size equals: 1.
	self assert: client webhook embeds first title equals: self anyString.