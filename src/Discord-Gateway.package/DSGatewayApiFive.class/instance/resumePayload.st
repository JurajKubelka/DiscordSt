accessing - messages
resumePayload
	"Get OP 6 Resume object"
	^ DSGatewayPayload new
		code: 6;
		eventData: self resumeData;
		yourself