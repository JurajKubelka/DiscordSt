private
startReadingProcesses
	"Start Heartbeat and Reading processes.
	Heartbeat process sends regularly Heartbeat message to the Gateway server.
	Reading process reads all events and requests from the Gateway server."
	readingProcess := DSGatewayReadingProcess new.
	readingProcess 
		websocket: self;
		receiver: (DSGatewayMessageReceiver new
			api: self;
			yourself);
		start.