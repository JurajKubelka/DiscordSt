public
handShakeOn: aDSGatewayApi 
	"Receive the OP 10 Hello code and pass to other state."
	self handleOn: aDSGatewayApi.
	"Do hand shaking with the server"
	aDSGatewayApi state handShakeOn: aDSGatewayApi