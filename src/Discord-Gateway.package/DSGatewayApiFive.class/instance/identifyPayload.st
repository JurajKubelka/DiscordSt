accessing - messages
identifyPayload
	"Get OP 2 Identify object"
	^ DSGatewayObsoletePayload new
		code: 2;
		eventData: self identifyData;
		yourself