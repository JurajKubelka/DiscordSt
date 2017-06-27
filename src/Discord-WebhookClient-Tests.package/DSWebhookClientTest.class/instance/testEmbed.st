tests - embed
testEmbed
	client := DSWebhookClient new
		embed: (DSEmbed new title: self anyString; yourself);
		yourself.
	self assert: client webhook embeds isCollection.
	self assert: client webhook embeds size equals: 1.
	self assert: client webhook embeds first title equals: self anyString.