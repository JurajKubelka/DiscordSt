mapping - embed
embedVideoMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSEmbedVideo do: [ :mapping |
	      (mapping mapAccessor: #url) valueSchema: ZnUrl.
			(mapping mapAccessor: #height).
			(mapping mapAccessor: #width) ].
	self urlMappingFor: aNeoJSONMapper.