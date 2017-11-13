tests
testIsConnectedFalse
	process := self newGatewayProcess.
	process websocket: ZnWebSocket new.
	self deny: process isConnected.