mapping - event
identityEventMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGatewayIdentityEvent do: [ :mapping |
	      mapping mapAccessor: #token.
			(mapping mapAccessor: #properties) valueSchema: DSGatewayIdentityProperties.
			mapping mapAccessor: #compress.
			mapping mapAccessor: #largeThreshold to: #large_threshold.
	      (mapping mapAccessor: #shard) valueSchema: DSGatewayShard.
			(mapping mapAccessor: #status to: #presence) valueSchema: DSGatewayStatusUpdate ].
	self
		identityPropertiesMappingFor: aNeoJSONMapper;
		shardMappingFor: aNeoJSONMapper;
		statusUpdateMappingFor: aNeoJSONMapper.