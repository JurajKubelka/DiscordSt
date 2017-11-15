mock
gatewayConnectUrl
	"Return a Mock Gateway URL object used for the WebSocket connection.
	It defines protocol version and used enconding system."
	^ server gatewayUrl
		queryAt: 'v' put: 5;
		queryAt: 'enconding' put: 'json';
		yourself