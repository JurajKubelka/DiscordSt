tests
testEmbedAuthorMappingFor
	| result jsonResult jsonString |
	jsonString := '{"name":"name of author","url":"https://example.com/author.html","icon_url":"http://cdn.example.com/author_icon.png","proxy_icon_url":"http://image.example.com/author_icon.png"}'.
	result := self read: jsonString as: DSEmbedAuthor mappedTo: #embedAuthorMappingFor:.
	self assert: result class equals: DSEmbedAuthor.
	self assert: result name equals: 'name of author'.
	self assert: result url equals: 'https://example.com/author.html'.
	self assert: result iconUrl equals: 'http://cdn.example.com/author_icon.png'.
	self assert: result proxyIconUrl equals: 'http://image.example.com/author_icon.png'.
	jsonResult := self write: result mappedTo: #embedAuthorMappingFor:.
	self assert: jsonResult equals: jsonString.