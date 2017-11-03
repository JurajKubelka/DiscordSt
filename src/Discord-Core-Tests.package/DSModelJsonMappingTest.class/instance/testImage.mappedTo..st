tests - basic
testImage: aDiscordClass mappedTo: mappingSymbol
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmbedImage.
	result := self read: jsonString as: aDiscordClass mappedTo: mappingSymbol.
	self assert: result class equals: aDiscordClass.
	self assert: result url equals: 'http://cdn.example.com/image.jpg'.
	self assert: result proxyUrl equals: 'http://proxy.example.com/image.jpg'.
	self assert: result height equals: 618.
	self assert: result width equals: 967.
	jsonResult := self write: result mappedTo: mappingSymbol.
	self assert: jsonResult equals: jsonString.