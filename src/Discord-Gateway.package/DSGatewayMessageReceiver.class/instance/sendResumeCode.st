private - actions
sendResumeCode
	"Send the OP 6 Resume message to a Discord Gateway."
	| payload |
	payload := DSGatewayResumePayload new
		eventData: (DSGatewayResumeEvent new
			token: self token;
			sequenceNumber: self sequenceNumber;
			sessionId: self sessionId;
			yourself);
		yourself.
	self sendMessage: payload.	