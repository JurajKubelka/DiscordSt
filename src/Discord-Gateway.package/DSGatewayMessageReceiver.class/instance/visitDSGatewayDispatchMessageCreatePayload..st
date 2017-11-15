visiting
visitDSGatewayDispatchMessageCreatePayload: payload
	"Message Create event received. Let's inform about it."
	self announcer announce: (DSGatewayMessageCreateAnnouncement payload: payload)