mapping - basic
image: anImageClass mappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: anImageClass do: [ :mapping |
	      (mapping mapAccessor: #url).
	      (mapping mapAccessor: #proxyUrl to: #proxy_url).
			(mapping mapAccessor: #height).
			(mapping mapAccessor: #width) ].
