visiting
visitDSGatewayDispatchResumedPayload: aDSGatewayDispatchResumedPayload 
	aDSGatewayDispatchResumedPayload sequenceNumber ifNotNil: [ :sequence | self sequenceNumber: sequence ].
	self announcer announce: (DSGatewayResumedAnnouncement new payload: aDSGatewayDispatchResumedPayload; yourself)