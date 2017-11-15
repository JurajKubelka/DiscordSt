mapping - payload
unclassifiedPayloadMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGatewayUnclassifiedPayload do: [ :mapping |
			mapping mapAccessor: #code to: #op.
	      mapping mapAccessor: #eventData to: #d.
			mapping mapAccessor: #sequenceNumber to: #s.
			mapping mapAccessor: #eventName to: #t ].