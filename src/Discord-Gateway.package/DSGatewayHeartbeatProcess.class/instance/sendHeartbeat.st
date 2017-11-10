private
sendHeartbeat
	"Send OP 1 Heartbeat message to a Discord Gateway server."
	self websocket sendMessage: self heartbeatString