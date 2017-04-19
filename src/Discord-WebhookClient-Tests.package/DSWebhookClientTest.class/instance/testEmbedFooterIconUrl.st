tests - embed
testEmbedFooterIconUrl
	client := DSWebhookClient new
		embedFooterIconUrl: self anyString;
		yourself.
	self assert: client webhook embeds isCollection.
	self assert: client webhook embeds size equals: 1.
	self assert: client webhook embeds first footer iconUrl equals: self anyString.