tests - embed
testEmbedUrl
	client := DSWebhookClient new
		embedUrl: self anyString;
		yourself.
	self assert: client webhook embeds isCollection.
	self assert: client webhook embeds size equals: 1.
	self assert: client webhook embeds first url equals: self anyString.