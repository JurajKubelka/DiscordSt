testing
canDoNextCycle
	"Heartbeat is allowed if there is a connected WebSocket
	and it is explicitly allowed."
	^ canDoNextCycle and: [ self isConnected ]