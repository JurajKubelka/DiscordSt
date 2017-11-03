mapping - embed
embedAuthorMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSEmbedAuthor do: [ :mapping |
			(mapping mapAccessor: #name).
	      (mapping mapAccessor: #url).
			(mapping mapAccessor: #iconUrl to: #icon_url).
			(mapping mapAccessor: #proxyIconUrl to: #proxy_icon_url) ].
