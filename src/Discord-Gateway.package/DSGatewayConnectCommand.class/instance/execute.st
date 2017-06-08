execute
execute
	self ensureConnectedWebSocket.
	self receiveHelloCode.
	self sendIdentifyCode.
	self receiveReadyEventOrInvalidSessionCode.
	