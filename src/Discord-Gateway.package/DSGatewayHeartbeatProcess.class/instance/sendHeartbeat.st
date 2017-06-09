private
sendHeartbeat
	"Send OP 1 Heartbeat messae to a Discord Gateway server."
	self ifConnected: [ :aWebSocket | 
		aWebSocket sendMessage: self heartbeatString ]