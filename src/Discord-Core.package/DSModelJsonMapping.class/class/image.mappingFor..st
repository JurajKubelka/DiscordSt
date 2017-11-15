mapping - basic
image: anImageClass mappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: anImageClass do: [ :mapping |
	      (mapping mapAccessor: #url) valueSchema: ZnUrl.
	      (mapping mapAccessor: #proxyUrl to: #proxy_url) valueSchema: ZnUrl.
			(mapping mapAccessor: #height).
			(mapping mapAccessor: #width) ].
	self urlMappingFor: aNeoJSONMapper.