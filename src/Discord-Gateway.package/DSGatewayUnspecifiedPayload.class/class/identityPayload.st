examples
identityPayload
	<gtExample>
	^ DSGatewayModelJsonMapping 
		read: self
		withMapping: #unspecifiedPayloadMappingFor: 
		on: DSGatewayModelJsonMapping jsonIdentityPayload readStream.