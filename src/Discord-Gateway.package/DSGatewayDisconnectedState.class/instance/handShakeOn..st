public
handShakeOn: aDSGatewayApi
	"Connect to a Discord Gateway if not connected.
	This method is called when the Gateway WebSocket was closed during the connection process."
	"Establish WebSocket"
	self handleOn: aDSGatewayApi.
	"Do hand shaking with the server"
	aDSGatewayApi state handShakeOn: aDSGatewayApi