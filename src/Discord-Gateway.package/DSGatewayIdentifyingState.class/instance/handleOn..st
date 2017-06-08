public
handleOn: aDSGatewayApi 
	"Receive OP 9 Invalid Session or Ready Event."
	DSGatewayEstablishCommand new
		api: aDSGatewayApi;
		execute.
	aDSGatewayApi isAlive 
		ifTrue: [ aDSGatewayApi setGatewayState: DSGatewayConnectedState new ]
		ifFalse: [ self halt. "TODO: handle OP 9 Invalid session or move to Connected state." ]
	