tests - embed
testEmbedFieldMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmbedField.
	result := self read: jsonString as: DSEmbedField mappedTo: #embedFieldMappingFor:.
	self assert: result class equals: DSEmbedField.
	self assert: result name equals: 'name of the field'.
	self assert: result value equals: 'value of the field'.
	self assert: result isInline.
	jsonResult := self write: result mappedTo: #embedFieldMappingFor:.
	self assert: jsonResult equals: jsonString.