initialization
initialize
	super initialize.
	readingProcess := DSGatewayReadingProcess new.
	heartbeatProcess := DSGatewayHeartbeatProcess new.
	heartbeatProcess websocket: self websocket.
	receiver := DSGatewayMessageReceiver new.
	receiver
		websocket: self websocket;
		heartbeatProcess: heartbeatProcess.
	readingProcess 
		websocket: self websocket;
		receiver: receiver.