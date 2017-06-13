visiting
visitDSGatewayMessageUpdateEventPayload: payload 
	"Message Update event received. Let's inform about it."
	^ self api messageUpdateBlock cull: payload eventData