private - actions
sendIdentifyCode
	"Send the OP 2 Identify message to a Discord Gateway."
	| payload |
	payload := DSGatewayIdentityPayload new
		eventData: (DSGatewayIdentityEvent new
			token: self token;
			properties: DSGatewayIdentityProperties new;
			compress: false;
			largeThreshold: 250;
			yourself);
		yourself.
	self sendMessage: payload.	