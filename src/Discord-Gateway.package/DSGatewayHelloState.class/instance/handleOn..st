public
handleOn: aDSGatewayApi 
	"Send OP 2 Identify or OP 6 Resume codes."
	aDSGatewayApi hasSessionId 
		ifFalse: [ self sendIdentifyOperation: aDSGatewayApi ]
		ifTrue: [ self sendResumeOperation: aDSGatewayApi ]