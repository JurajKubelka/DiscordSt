accessing
adventOfCodeWebhookUrl
	^ webhookUrl ifNil: [ webhookUrl := '' ]