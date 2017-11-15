*Discord-WebhookClient
jsonWebhookPost
	^ '{"content":"the message contents (up to 2000 characters)","username":"override the default username of the webhook","avatar_url":"http://example.com/avatar.png","tts":true,"embeds":', 
	self jsonCollectionOfEmbedsOne, '}'