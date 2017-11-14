mapping - embed
embedFooterMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSEmbedFooter do: [ :mapping |
	      (mapping mapAccessor: #text).
			(mapping mapAccessor: #iconUrl to: #icon_url) valueSchema: ZnUrl.
			(mapping mapAccessor: #proxyIconUrl to: #proxy_icon_url) valueSchema: ZnUrl ].
	self urlMappingFor: aNeoJSONMapper.