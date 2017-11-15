tests - channel
testOverwriteMappingForRole
	| result jsonResult jsonString |
	jsonString := self classToTest jsonOverwriteRole.
	result := self read: jsonString as: DSOverwrite mappedTo: #overwriteMappingFor:.
	self assert: result class equals: DSOverwrite.
	self assert: result id equals: '376082041888961711'.
	self assert: result type equals: 'role'.
	self assert: result allow equals: 987.
	self assert: result deny equals: 654.
	jsonResult := self write: result mappedTo: #overwriteMappingFor:.
	self assert: jsonResult equals: jsonString.