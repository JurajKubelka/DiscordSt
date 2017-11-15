public
disconnect
	"Close the connection with the Discord Gateway.
	Stop Heartbeat and Reading processes.
	See https://discordapp.com/developers/docs/topics/gateway#connecting"
	heartbeatProcess stop.
	readingProcess stop.
	websocket close.