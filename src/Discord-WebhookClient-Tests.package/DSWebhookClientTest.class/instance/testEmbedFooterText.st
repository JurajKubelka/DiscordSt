tests - embed
testEmbedFooterText
	client := DSWebhookClient new
		embedFooterText: self anyString;
		yourself.
	self assert: client webhook embeds isCollection.
	self assert: client webhook embeds size equals: 1.
	self assert: client webhook embeds first footer text equals: self anyString.