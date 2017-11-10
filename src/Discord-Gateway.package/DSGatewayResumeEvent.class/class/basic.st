examples
basic
	<gtExample>
	^ DSGatewayModelJsonMapping 
		read: self 
		withMapping: #resumeEventMappingFor: 
		on: DSGatewayModelJsonMapping jsonResumeEvent readStream.