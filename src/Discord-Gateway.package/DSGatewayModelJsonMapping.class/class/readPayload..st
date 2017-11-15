public
readPayload: jsonString 
	"Parse the json string that represents a Gateway payload.
	It correctly parses the eventData according to the payload code."
	<return: #DSGatewayPayload>
	| unspecifidPayload schema |
	unspecifidPayload := self read: DSGatewayUnspecifiedPayload withMapping: #unspecifiedPayloadMappingFor: on: jsonString readStream.
	schema := DSGatewayPayload schemaFromUnspecifidPayload: unspecifidPayload.
	^ self read: schema withMapping: #payloadMappingFor: on: jsonString readStream.