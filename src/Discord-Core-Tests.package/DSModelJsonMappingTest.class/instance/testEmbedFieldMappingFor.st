tests
testEmbedFieldMappingFor
	| result jsonResult jsonString |
	jsonString := '{"name":"name of the field","value":"value of the field","inline":true}'.
	result := self read: jsonString as: DSEmbedField mappedTo: #embedFieldMappingFor:.
	self assert: result class equals: DSEmbedField.
	self assert: result name equals: 'name of the field'.
	self assert: result value equals: 'value of the field'.
	self assert: result inline.
	self assert: result isInline.
	jsonResult := self write: result mappedTo: #embedFieldMappingFor:.
	self assert: jsonResult equals: jsonString.