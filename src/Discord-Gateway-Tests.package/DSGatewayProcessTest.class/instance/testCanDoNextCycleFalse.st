tests
testCanDoNextCycleFalse
	"Heartbeat is not allowed by default, because of disconnected WebSocket"
	process := self newGatewayProcess.
	process websocket: ZnWebSocket new.
	self deny: process canDoNextCycle