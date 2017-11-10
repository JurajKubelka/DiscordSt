visiting
visitDSGatewayReadyEventPayload: payload 
	payload sequence ifNotNil: [ :sequence | self sequenceNumber: sequence ].
	payload sessionId ifNotNil: [ :id | self sessionId: id ]. 
	^ self api readyBlock cull: payload eventData