visiting
visitDSGatewayDispatchReadyPayload: payload 
	payload sequenceNumber ifNotNil: [ :sequence | self sequenceNumber: sequence ].
	payload sessionId ifNotNil: [ :id | self sessionId: id ]. 
	self announcer announce: (DSGatewayReadyAnnouncement new payload: payload; yourself)