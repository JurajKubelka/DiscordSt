tests - basic
testColorMappingForGreen
	| result jsonResult jsonString |
	jsonString := '65280'.
	result := self read: jsonString as: Color mappedTo: #colorMappingFor:.
	self assert: result class equals: Color.
	self assert: result equals: Color green.
	jsonResult := self write: result mappedTo: #colorMappingFor:.
	self assert: jsonResult equals: jsonString.