*Discord-WebhookClient-Tests
testWebhookPostMappingFor2
	| result jsonResult jsonString |
	jsonString := self classToTest jsonWebhookPost.
	result := self read: jsonString as: DSWebhookDataPost mappedTo: #webhookPostMappingFor:.
	self assert: result class equals: DSWebhookDataPost.
	self assert: result content equals: 'the message contents (up to 2000 characters)'.
	self assert: result username equals: 'override the default username of the webhook'.
	self assert: result avatarUrl equals: 'http://example.com/avatar.png' asZnUrl.
	self assert: result textToSpeech.
	self assert: result embeds class equals: Array.
	self assert: result embeds first class equals: DSEmbed.
	jsonResult := self write: result mappedTo: #webhookPostMappingFor:.
	self assert: jsonResult equals: jsonString.