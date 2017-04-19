tests - embed
testEmbedDescription
	client := DSWebhookClient new
		embedDescription: self anyString;
		yourself.
	self assert: client webhook embeds isCollection.
	self assert: client webhook embeds size equals: 1.
	self assert: client webhook embeds first description equals: self anyString.