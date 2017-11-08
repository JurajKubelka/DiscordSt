*Discord-WebhookClient
visitDSDataWebhookPost: aDSWebhookDataPost 
	| part payloadJson |
	self entity: ZnMultiPartFormDataEntity new.
	payloadJson := DSModelJsonMapping write: aDSWebhookDataPost mappedTo: #webhookPostMappingFor:.
	part := ZnMimePart fieldName: 'payload_json' value: payloadJson.
	entity addPart: part.
	aDSWebhookDataPost fileParts do: [ :eachPart |
		entity addPart: eachPart ].