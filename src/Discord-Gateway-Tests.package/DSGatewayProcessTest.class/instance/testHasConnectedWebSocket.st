tests
testHasConnectedWebSocket
	process := self newGatewayProcess.
	self deny: process hasConnectedWebSocket.