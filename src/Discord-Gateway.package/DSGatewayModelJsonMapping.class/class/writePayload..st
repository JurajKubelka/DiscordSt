public
writePayload: aDSGatewayPayload
	"Return a JSON string representation of the Discord Gateway payload."
	<return: #String>
	^ self write: aDSGatewayPayload mappedTo: #payloadMappingFor: