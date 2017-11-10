private - actions
startHeartbeatProcessWithInterval: anInteger
	"Send the OP 2 Identify message to a Discord Gateway."
	self heartbeatProcess 
		heartbeatInterval: anInteger;
		start.