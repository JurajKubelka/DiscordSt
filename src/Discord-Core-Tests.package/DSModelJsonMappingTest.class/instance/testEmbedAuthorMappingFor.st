tests - embed
testEmbedAuthorMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmbedAuthor.
	result := self read: jsonString as: DSEmbedAuthor mappedTo: #embedAuthorMappingFor:.
	self assert: result class equals: DSEmbedAuthor.
	self assert: result name equals: 'name of author'.
	self assert: result url equals: 'https://example.com/author.html' asZnUrl.
	self assert: result iconUrl equals: 'http://cdn.example.com/author_icon.png' asZnUrl.
	self assert: result proxyIconUrl equals: 'http://image.example.com/author_icon.png' asZnUrl.
	jsonResult := self write: result mappedTo: #embedAuthorMappingFor:.
	self assert: jsonResult equals: jsonString.