private
startHeartbeatProcess
	"Start Heartbeat.
	Heartbeat process sends regularly Heartbeat message to the Gateway server."
	heartbeatProcess := DSGatewayObsoleteHeartbeatProcess new.
	heartbeatProcess 
		websocket: self;
		heartbeatInterval: self heartbeatInterval;
		sequenceNumber: self sequenceNumber;
		start.
