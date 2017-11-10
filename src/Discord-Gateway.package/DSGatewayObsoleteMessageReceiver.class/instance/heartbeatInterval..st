accessing
heartbeatInterval: anInteger
	"Set the interval (in milliseconds) the client should heartbeat with"
	self api ifNotNil: [ :anApi | anApi heartbeatInterval: anInteger ]