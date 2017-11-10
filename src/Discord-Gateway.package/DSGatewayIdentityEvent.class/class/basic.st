examples
basic
	<gtExample>
	^ DSGatewayModelJsonMapping 
		read: self 
		withMapping: #identityEventMappingFor: 
		on: DSGatewayModelJsonMapping jsonIdentityEvent readStream.