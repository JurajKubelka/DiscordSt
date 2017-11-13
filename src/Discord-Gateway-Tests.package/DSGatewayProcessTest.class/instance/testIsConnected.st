tests
testIsConnected
	process := self newGatewayProcess.
	self deny: process isConnected.