tests - guild
testGameMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonGame.
	result := self read: jsonString as: DSGame mappedTo: #gameMappingFor:.
	self assert: result class equals: DSGame.
	self assert: result name equals: 'Rocket League'.
	self assert: result type equals: 1.
	self assert: result url equals: 'https://www.twitch.tv/123' asZnUrl.
	jsonResult := self write: result mappedTo: #gameMappingFor:.
	self assert: jsonResult equals: jsonString.