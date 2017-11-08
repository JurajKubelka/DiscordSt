mapping - payload
editMessagePayloadMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: NeoJSONObject do: [ :mapping |
	      mapping mapAccessor: #content.
	      (mapping mapAccessor: #embed) valueSchema: DSEmbed ].
	self embedMappingFor: aNeoJSONMapper