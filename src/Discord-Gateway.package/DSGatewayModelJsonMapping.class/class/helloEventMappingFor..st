mapping - event
helloEventMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGatewayHelloEvent do: [ :mapping |
	      mapping mapAccessor: #heartbeatInterval to: #heartbeat_interval.
	      mapping mapAccessor: #traces to: #_trace ].