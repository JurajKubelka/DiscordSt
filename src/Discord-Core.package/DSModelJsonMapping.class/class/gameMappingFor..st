mapping - guild
gameMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGame
		do: [ :mapping | 
			mapping allowNil.
			mapping mapAccessor: #name.
			mapping mapAccessor: #type.
			(mapping mapAccessor: #url) valueSchema: ZnUrl ].
	self 
		urlMappingFor: aNeoJSONMapper.