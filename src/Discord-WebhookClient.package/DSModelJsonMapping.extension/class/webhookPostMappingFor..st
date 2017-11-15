*Discord-WebhookClient
webhookPostMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSWebhookJsonPost do: [ :mapping |
	      mapping mapAccessor: #content.
	      mapping mapAccessor: #username.
			(mapping mapAccessor: #avatarUrl to: #avatar_url) valueSchema: ZnUrl.
	      mapping mapAccessor: #isTextToSpeech to: #tts.
			(mapping mapAccessor: #embeds) valueSchema: #CollectionOfEmbeds ];
		for: DSWebhookDataPost do: [ :mapping |
	      mapping mapAccessor: #content.
	      mapping mapAccessor: #username.
			(mapping mapAccessor: #avatarUrl to: #avatar_url) valueSchema: ZnUrl.
	      mapping mapAccessor: #isTextToSpeech to: #tts.
			(mapping mapAccessor: #embeds) valueSchema: #CollectionOfEmbeds ].
	self 
		urlMappingFor: aNeoJSONMapper;
		collectionOfEmbedsMappingFor: aNeoJSONMapper.