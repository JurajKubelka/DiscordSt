*Discord-WebhookClient
visitDSJSONWebhookPost: aDSWebhookJsonPost 
	self entity: (
		ZnEntity text: (
			DSModelJsonMapping write: aDSWebhookJsonPost mappedTo: #webhookPostMappingFor:)).
	self entity contentType: ZnMimeType applicationJson.