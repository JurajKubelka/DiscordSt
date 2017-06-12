private
stopProcesses
	"Stop Heartbeat and Reading processes.
	Heartbeat process sends regularly Heartbeat message to the Gateway server.
	Reading process reads all events and requests from the Gateway server."
	heartbeatProcess ifNotNil: #stop.
	readingProcess ifNotNil: #stop.
