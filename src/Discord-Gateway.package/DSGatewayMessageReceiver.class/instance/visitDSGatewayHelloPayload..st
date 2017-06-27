visiting
visitDSGatewayHelloPayload: payload 
	self heartbeatInterval: payload heartbeatInterval.
	self hasSessionIdAndSequenceNumber
		ifFalse: [ self sendIdentifyCode ]
		ifTrue: [ self sendResumeCode ].
	self startHeartbeatProcess.