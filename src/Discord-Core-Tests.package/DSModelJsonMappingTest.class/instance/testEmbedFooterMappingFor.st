tests - embed
testEmbedFooterMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmbedFooter.
	result := self read: jsonString as: DSEmbedFooter mappedTo: #embedFooterMappingFor:.
	self assert: result class equals: DSEmbedFooter.
	self assert: result text equals: 'footer text'.
	self assert: result iconUrl equals: 'http://cdn.example.com/icon.png'.
	self assert: result proxyIconUrl equals: 'http://image.example.com/icon.png'.
	jsonResult := self write: result mappedTo: #embedFooterMappingFor:.
	self assert: jsonResult equals: jsonString.