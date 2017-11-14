*Discord-Client
clientPostMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSClientJsonPost do: [ :mapping |
	      mapping mapAccessor: #content.
	      mapping mapAccessor: #nonce.
			mapping mapAccessor: #isTextToSpeech to: #tts.
			(mapping mapAccessor: #embed) valueSchema: DSEmbed ];
		for: DSClientDataPost do: [ :mapping |
	      mapping mapAccessor: #content.
	      mapping mapAccessor: #nonce.
			mapping mapAccessor: #isTextToSpeech to: #tts.
			(mapping mapAccessor: #embed) valueSchema: DSEmbed ].
	self embedMappingFor: aNeoJSONMapper.