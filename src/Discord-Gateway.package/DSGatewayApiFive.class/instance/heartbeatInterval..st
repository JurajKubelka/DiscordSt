accessing
heartbeatInterval: anInteger 
	"Set the interval (in milliseconds) the client should heartbeat with"
	self cacheAt: #heartbeatInterval put: anInteger.