tests - basic
testUrlMappingFor
	| result jsonResult jsonString |
	jsonString := '"https://www.twitch.tv/123"'.
	result := self read: jsonString as: ZnUrl mappedTo: #urlMappingFor:.
	self assert: result class equals: ZnUrl.
	self assert: result equals: 'https://www.twitch.tv/123' asZnUrl.
	jsonResult := self write: result mappedTo: #urlMappingFor:.
	self assert: jsonResult equals: jsonString.