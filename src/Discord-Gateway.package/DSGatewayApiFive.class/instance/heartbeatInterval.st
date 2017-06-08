accessing
heartbeatInterval
	"Get heart beat interval for a current connection.
	Client should ping regularly, using this interval."
	^ self cacheAt: #heartbeatInterval