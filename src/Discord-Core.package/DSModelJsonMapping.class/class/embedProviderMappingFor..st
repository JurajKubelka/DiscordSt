mapping - embed
embedProviderMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSEmbedProvider do: [ :mapping |
	      (mapping mapAccessor: #name).
			(mapping mapAccessor: #url) valueSchema: ZnUrl ].
	self urlMappingFor: aNeoJSONMapper.