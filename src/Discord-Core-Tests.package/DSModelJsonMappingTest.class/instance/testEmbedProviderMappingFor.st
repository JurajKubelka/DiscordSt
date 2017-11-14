tests - embed
testEmbedProviderMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmbedProvider.
	result := self read: jsonString as: DSEmbedProvider mappedTo: #embedProviderMappingFor:.
	self assert: result class equals: DSEmbedProvider.
	self assert: result url equals: 'http://example.com/provider.html' asZnUrl.
	self assert: result name equals: 'name of provider'.
	jsonResult := self write: result mappedTo: #embedProviderMappingFor:.
	self assert: jsonResult equals: jsonString.