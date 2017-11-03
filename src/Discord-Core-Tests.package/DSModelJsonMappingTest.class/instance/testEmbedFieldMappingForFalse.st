tests - embed
testEmbedFieldMappingForFalse
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmbedFieldFalse.
	result := self read: jsonString as: DSEmbedField mappedTo: #embedFieldMappingFor:.
	self assert: result class equals: DSEmbedField.
	self assert: result name equals: 'name of the not-inlined field'.
	self assert: result value equals: 'value of the not-inlined field'.
	self deny: result inline.
	self deny: result isInline.
	jsonResult := self write: result mappedTo: #embedFieldMappingFor:.
	self assert: jsonResult equals: jsonString.