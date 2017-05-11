as yet unclassified
handleOn: aDSGatewayApi 
	"Connect to Discord Gateway and move to the next state on success."
	DSGatewayConnectCommand new
		api: aDSGatewayApi;
		execute.
	aDSGatewayApi setGatewayState: DSGatewayWithWebSocketState new.