tests
testEmbedFooterMappingFor
	| result jsonResult jsonString |
	jsonString := '{"text":"footer text","icon_url":"http://cdn.example.com/icon.png","proxy_icon_url":"http://image.example.com/icon.png"}'.
	result := self read: jsonString as: DSEmbedFooter mappedTo: #embedFooterMappingFor:.
	self assert: result class equals: DSEmbedFooter.
	self assert: result text equals: 'footer text'.
	self assert: result iconUrl equals: 'http://cdn.example.com/icon.png'.
	self assert: result proxyIconUrl equals: 'http://image.example.com/icon.png'.
	jsonResult := self write: result mappedTo: #embedFooterMappingFor:.
	self assert: jsonResult equals: jsonString.