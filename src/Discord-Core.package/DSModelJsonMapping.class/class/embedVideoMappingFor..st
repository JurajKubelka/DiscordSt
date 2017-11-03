mapping - embed
embedVideoMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSEmbedVideo do: [ :mapping |
	      (mapping mapAccessor: #url).
			(mapping mapAccessor: #height).
			(mapping mapAccessor: #width) ].
