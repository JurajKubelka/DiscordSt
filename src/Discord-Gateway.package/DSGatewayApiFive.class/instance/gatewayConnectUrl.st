accessing
gatewayConnectUrl
	"Return Gateway URL object used for the WebSocket connection.
	It defines protocol version and used enconding system."
	^ self gateway asZnUrl
		queryAt: 'v' put: 5;
		queryAt: 'enconding' put: 'json';
		yourself