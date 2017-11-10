examples
readyPayload
	<gtExample>
	^ DSGatewayModelJsonMapping 
		read: self
		withMapping: #unspecifiedPayloadMappingFor: 
		on: DSGatewayModelJsonMapping jsonReadyPayload readStream.