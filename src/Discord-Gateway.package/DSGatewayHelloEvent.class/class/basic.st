examples
basic
	<gtExample>
	^ DSGatewayModelJsonMapping 
		read: self 
		withMapping: #helloEventMappingFor: 
		on: DSGatewayModelJsonMapping jsonHelloEvent readStream.