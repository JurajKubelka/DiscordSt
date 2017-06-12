accessing
heartbeatInterval
	"Get the interval (in milliseconds) the client should heartbeat with"
	^ self 
		fieldsAt: #d 
		ifPresent: [ :dict | dict at: #heartbeat_interval ifAbsent: nil ]
		ifAbsent: nil 