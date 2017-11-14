mapping - embed
embedAuthorMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSEmbedAuthor do: [ :mapping |
			(mapping mapAccessor: #name).
	      (mapping mapAccessor: #url) valueSchema: ZnUrl.
			(mapping mapAccessor: #iconUrl to: #icon_url) valueSchema: ZnUrl.
			(mapping mapAccessor: #proxyIconUrl to: #proxy_icon_url) valueSchema: ZnUrl ].
	self urlMappingFor: aNeoJSONMapper.