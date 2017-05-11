mock
heartbeatInterval: anInteger 
	"Set Mock hearbeat interval."
	self serverRequests add: #heartbeatInterval.
	self fieldsAt: #heartbeatInterval put: anInteger.