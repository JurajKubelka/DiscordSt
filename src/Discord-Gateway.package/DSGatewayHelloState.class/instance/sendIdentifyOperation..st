private
sendIdentifyOperation: aDSGatewayApi
	DSGatewayIdentifyCommand new
		api: aDSGatewayApi;
		execute.
	aDSGatewayApi setGatewayState: DSGatewayIdentifyingState new