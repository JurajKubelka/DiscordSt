mock
gatewayUrlMessage
	"Return Discord Server response that answers Gateway URL."
	^ '{"url": "', self gatewayUrl asString, '"}'