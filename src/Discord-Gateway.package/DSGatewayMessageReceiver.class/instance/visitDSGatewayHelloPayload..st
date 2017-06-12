visiting
visitDSGatewayHelloPayload: payload 
	self heartbeatInterval: payload heartbeatInterval.
	self sendIdentifyCode.
	self startHeartbeatProcess.