initialize-release
connectOn: aDSGatewayApi
	"Connect to a Discord Gateway if not connected."
	"Establish WebSocket"
	self handleOn: aDSGatewayApi.
	"Do hand shaking with the server"
	aDSGatewayApi state handShakeOn: aDSGatewayApi