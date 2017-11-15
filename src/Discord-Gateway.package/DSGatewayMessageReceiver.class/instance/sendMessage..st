private - actions
sendMessage: aGatewayPayload
	| jsonString |
	jsonString := DSGatewayModelJsonMapping writePayload: aGatewayPayload.
	self websocket sendMessage: jsonString.	