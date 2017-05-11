as yet unclassified
handleOn: aDSGatewayApi 
	"Receive OP 10  Hello message and set heartbeat interval"
	DSGatewayHelloCommand new
		api: aDSGatewayApi;
		execute.
	aDSGatewayApi setGatewayState: DSGatewayHelloState new.