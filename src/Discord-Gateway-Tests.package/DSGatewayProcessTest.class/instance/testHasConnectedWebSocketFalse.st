tests
testHasConnectedWebSocketFalse
	process := self newGatewayProcess.
	process websocket: ZnWebSocket new.
	self deny: process hasConnectedWebSocket.