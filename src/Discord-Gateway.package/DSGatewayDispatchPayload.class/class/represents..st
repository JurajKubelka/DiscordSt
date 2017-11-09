testing
represents: aDSGatewayUnspecifiedPayload 
	"Return true if a class represents the given payload."
	^ (super represents: aDSGatewayUnspecifiedPayload) 
			and: [ self eventName = aDSGatewayUnspecifiedPayload eventName ]