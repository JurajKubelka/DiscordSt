tests
testCanDoNextCycle
	"Heartbeat is not allowed by default, because of missing WebSocket"
	process := self newGatewayProcess.
	self deny: process canDoNextCycle