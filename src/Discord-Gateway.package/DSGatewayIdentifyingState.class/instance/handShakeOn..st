public
handShakeOn: aDSGatewayApi 
	"Receive OP 9 Invalid Session or Ready Event."
	self handleOn: aDSGatewayApi.
	"Do hand shaking with the server"
	aDSGatewayApi state handShakeOn: aDSGatewayApi