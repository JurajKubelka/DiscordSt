visiting
visitDSGatewayHelloPayload: payload
	self hasSessionId
		ifFalse: [ self sendIdentifyCode ]
		ifTrue: [ self sendResumeCode ].
	self startHeartbeatProcessWithInterval: payload heartbeatInterval.