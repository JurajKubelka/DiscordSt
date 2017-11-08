*Discord-WebhookClient
webhookPostMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSWebhookJsonPost do: [ :mapping |
	      mapping mapAccessor: #content.
	      mapping mapAccessor: #username.
			(mapping mapAccessor: #avatarUrl to: #avatar_url) valueSchema: ZnUrl.
	      mapping mapAccessor: #textToSpeech to: #tts.
			mapping mapProperty: #tts 
				getter: [ :object | object textToSpeech ] 
				setter: [ :object :value | 
					value ifTrue: [ object setTextToSpeech ].
					value ifFalse: [ object unsetTextToSpeech ] ].
			(mapping mapAccessor: #embeds) valueSchema: #CollectionOfEmbeds ];
		for: DSWebhookDataPost do: [ :mapping |
	      mapping mapAccessor: #content.
	      mapping mapAccessor: #username.
			(mapping mapAccessor: #avatarUrl to: #avatar_url) valueSchema: ZnUrl.
	      mapping mapAccessor: #textToSpeech to: #tts.
			mapping mapProperty: #tts 
				getter: [ :object | object textToSpeech ] 
				setter: [ :object :value | 
					value ifTrue: [ object setTextToSpeech ].
					value ifFalse: [ object unsetTextToSpeech ] ].
			(mapping mapAccessor: #embeds) valueSchema: #CollectionOfEmbeds ].
	self 
		urlMappingFor: aNeoJSONMapper;
		collectionOfEmbedsMappingFor: aNeoJSONMapper.