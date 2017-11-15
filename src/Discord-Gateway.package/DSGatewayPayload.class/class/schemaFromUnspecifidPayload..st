accessing
schemaFromUnspecifidPayload: aDSGatewayUnspecifiedPayload 
	"Return a specific class that represent the given payload, using code and eventName."
	<return: #DSGatewayPayload>
	^ self allPayloads detect: [ :eachPayload | eachPayload represents: aDSGatewayUnspecifiedPayload ]