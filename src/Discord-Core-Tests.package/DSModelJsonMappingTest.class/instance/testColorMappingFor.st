tests
testColorMappingFor
	| result jsonResult jsonString |
	jsonString := '16711680'.
	result := self read: jsonString as: Color mappedTo: #colorMappingFor:.
	self assert: result class equals: Color.
	self assert: result equals: Color red.
	jsonResult := self write: result mappedTo: #colorMappingFor:.
	self assert: jsonResult equals: jsonString.