mapping
embedFieldMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSEmbedField do: [ :mapping |
	      (mapping mapAccessor: #name).
			(mapping mapAccessor: #value).
			(mapping mapAccessor: #inline) ].
