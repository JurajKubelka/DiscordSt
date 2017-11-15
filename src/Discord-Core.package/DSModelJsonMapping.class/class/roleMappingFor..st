mapping - message
roleMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSRole do: [ :mapping |
	      mapping mapAccessor: #id.
	      mapping mapAccessor: #name.
	      (mapping mapAccessor: #color) valueSchema: Color.
			mapping mapAccessor: #hoist.
			mapping mapAccessor: #position.
			mapping mapAccessor: #permissions.
			mapping mapAccessor: #managed.
			mapping mapAccessor: #mentionable ].
	self colorMappingFor: aNeoJSONMapper.