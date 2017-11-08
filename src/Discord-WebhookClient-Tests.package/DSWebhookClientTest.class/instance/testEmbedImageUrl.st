tests - embed
testEmbedImageUrl
	client := DSWebhookClient new
		embedImageUrl: self anyString;
		yourself.
	self assert: client webhook embeds isCollection.
	self assert: client webhook embeds size equals: 1.
	self assert: client webhook embeds first image url equals: self anyString.