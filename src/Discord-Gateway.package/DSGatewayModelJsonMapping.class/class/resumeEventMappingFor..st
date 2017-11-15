mapping - event
resumeEventMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGatewayResumeEvent do: [ :mapping |
	      mapping mapAccessor: #token.
			mapping mapAccessor: #sessionId to: #session_id.
			mapping mapAccessor: #sequenceNumber to: #seq ].
