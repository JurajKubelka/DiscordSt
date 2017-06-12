visiting
visitDSGatewayMessageCreateEventPayload: payload 
	"Message Create event received. Let's inform about it."
	^ self api messageCreateBlock cull: payload eventData