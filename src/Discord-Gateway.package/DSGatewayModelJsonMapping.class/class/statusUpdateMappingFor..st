mapping - basic
statusUpdateMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGatewayStatusUpdate do: [ :mapping |
	      (mapping mapAccessor: #since) valueSchema: #UnixTimeInMilliSeconds.
	      (mapping mapAccessor: #game) valueSchema: DSGame.
			(mapping mapAccessor: #status) valueSchema: DSConnectionStatus.
			mapping mapAccessor: #awayFromKeyboard to: #afk ].
	self
		unixTimeInMilliSecondsMappingFor: aNeoJSONMapper;
		gameMappingFor: aNeoJSONMapper;
		connectionStatusMappingFor: aNeoJSONMapper.