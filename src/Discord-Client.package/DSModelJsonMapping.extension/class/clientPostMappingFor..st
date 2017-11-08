*Discord-Client
clientPostMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSClientJsonPost do: [ :mapping |
	      mapping mapAccessor: #content.
	      mapping mapAccessor: #nonce.
			mapping mapProperty: #tts 
				getter: [ :object | object textToSpeech ] 
				setter: [ :object :value | 
					value ifTrue: [ object setTextToSpeech ].
					value ifFalse: [ object unsetTextToSpeech ] ].
			(mapping mapAccessor: #embed) valueSchema: DSEmbed ];
		for: DSClientDataPost do: [ :mapping |
	      mapping mapAccessor: #content.
	      mapping mapAccessor: #nonce.
			mapping mapProperty: #tts 
				getter: [ :object | object textToSpeech ] 
				setter: [ :object :value | 
					value ifTrue: [ object setTextToSpeech ].
					value ifFalse: [ object unsetTextToSpeech ] ].
			(mapping mapAccessor: #embed) valueSchema: DSEmbed ].
	self embedMappingFor: aNeoJSONMapper.