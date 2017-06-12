private - api
startProcesses
	"Start Heartbeat and Reading processes.
	Heartbeat process sends regularly Heartbeat message to the Gateway server.
	Reading process reads all events and requests from the Gateway server."
	heartbeatProcess := DSGatewayHeartbeatProcess new.
	readingProcess := DSGatewayReadingProcess new.
	heartbeatProcess 
		websocket: self websocket;
		heartbeatInterval: self heartbeatInterval;
		sequenceNumber: self sequenceNumber;
		start.
	readingProcess 
		websocket: self websocket;
		receiver: (DSGatewayMessageReceiver new
			api: self;
			yourself);
		start.