accessing
heartbeatString
	"Return the JSON representation of the heartbeat payload."
	<return: #String>
	^ mutex critical: [ DSGatewayModelJsonMapping writePayload: heartbeatPayload ]