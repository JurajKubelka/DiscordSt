examples
basic
	<gtExample>
	^ DSGatewayModelJsonMapping 
		read: self 
		withMapping: #readyEventMappingFor: 
		on: DSGatewayModelJsonMapping jsonReadyEvent readStream.