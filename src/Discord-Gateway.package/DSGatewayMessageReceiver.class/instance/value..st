accessing
value: messageString
	"Receive a Discord Gateway message in a raw string format."
	| payload |
	payload := DSGatewayObsoletePayload fromJsonString: messageString.
	payload sequence ifNotNil: [ :integer | self sequenceNumber: integer ].
	Transcript show: payload; cr.
	payload accept: self.
	