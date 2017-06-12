accessing
value: messageString
	"Receive a Discord Gateway message in a raw string format."
	| payload |
	payload := DSGatewayPayload fromString: messageString.
	Transcript show: payload; cr.
	payload accept: self.
	