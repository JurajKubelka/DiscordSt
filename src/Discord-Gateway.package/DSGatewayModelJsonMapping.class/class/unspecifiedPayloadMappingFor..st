mapping - payload
unspecifiedPayloadMappingFor: aNeoJSONMapper 
	aNeoJSONMapper
		for: DSGatewayUnspecifiedPayload do: [ :mapping |
	      mapping mapAccessor: #code to: #op.
			mapping mapAccessor: #eventName to: #t ].