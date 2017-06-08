public
handleOn: aDSGatewayApi 
	"Receive OP 10  Hello message and set heartbeat interval"
	[ 
		DSGatewayHelloCommand new
			api: aDSGatewayApi;
			execute.
		aDSGatewayApi setGatewayState: DSGatewayHelloState new.
	] on: ZnWebSocketClosed do: [ :exception |
		aDSGatewayApi setGatewayState: DSGatewayDisconnectedState new ]