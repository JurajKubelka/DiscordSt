tests - channel
testOverwriteMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonOverwriteMember.
	result := self read: jsonString as: DSOverwrite mappedTo: #overwriteMappingFor:.
	self assert: result class equals: DSOverwrite.
	self assert: result id equals: '376082041888961714'.
	self assert: result type equals: 'member'.
	self assert: result allow equals: 123.
	self assert: result deny equals: 345.
	jsonResult := self write: result mappedTo: #overwriteMappingFor:.
	self assert: jsonResult equals: jsonString.