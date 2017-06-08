accessing
identifyPayload
	"Get OP 2 Identify object"
	^ DSGatewayPayload new
		code: 2;
		eventData: self identifyData;
		yourself