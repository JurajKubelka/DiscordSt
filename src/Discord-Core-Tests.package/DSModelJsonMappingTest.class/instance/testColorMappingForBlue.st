tests
testColorMappingForBlue
	| result jsonResult jsonString |
	jsonString := '255'.
	result := self read: jsonString as: Color mappedTo: #colorMappingFor:.
	self assert: result class equals: Color.
	self assert: result equals: Color blue.
	jsonResult := self write: result mappedTo: #colorMappingFor:.
	self assert: jsonResult equals: jsonString.