public
handShakeOn: aDSGatewayApi 
	"Send OP 2 Identify or OP 6 Resume code and pass the state."
	self handleOn: aDSGatewayApi.
	"Do hand shaking with the server"
	aDSGatewayApi state handShakeOn: aDSGatewayApi