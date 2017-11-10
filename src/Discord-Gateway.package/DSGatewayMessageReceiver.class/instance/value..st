evaluating
value: messageString
	"Receive a Discord Gateway message in a raw string format."
	| payload |
	payload := DSGatewayModelJsonMapping readPayload: messageString.
	payload sequenceNumber ifNotNil: [ :integer | self sequenceNumber: integer ].
	payload accept: self.
	