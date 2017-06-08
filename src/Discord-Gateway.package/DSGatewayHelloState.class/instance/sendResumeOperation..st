private
sendResumeOperation: aDSGatewayApi
	DSGatewayResumeCommand new
		api: aDSGatewayApi;
		execute.
	aDSGatewayApi setGatewayState: DSGatewayResumingState new