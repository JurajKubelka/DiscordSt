tests
testEmbedMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonEmbedOneField.
	result := self read: jsonString as: DSEmbed mappedTo: #embedMappingFor:.
	self assert: result class equals: DSEmbed.
	self assert: result title equals: 'title of embed'.
	self assert: result type equals: 'rich'.
	self assert: result description equals: 'description of embed'.
	self assert: result url equals: 'http://example.com/embed.html'.
	self assert: result timestamp equals: '2017-11-03T15:21:38.579000+00:00' asDateAndTime.
	self assert: result color equals: Color red.
	self assert: result footer class equals: DSEmbedFooter.
	self assert: result image class equals: DSEmbedImage.
	self assert: result thumbnail class equals: DSEmbedThumbnail.
	self assert: result video class equals: DSEmbedVideo.
	self assert: result provider class equals: DSEmbedProvider.
	self assert: result author class equals: DSEmbedAuthor.
	self assert: result fields class equals: Array.
	jsonResult := self write: result mappedTo: #embedMappingFor:.
	self assert: jsonResult equals: jsonString.