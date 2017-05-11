mock
connectToGateway
	"Connect to a Mock Gateway"
	self defaultConnectionTimeoutDuring: [ 
		DSGatewayConnectCommand new
		api: self;
		execute ].