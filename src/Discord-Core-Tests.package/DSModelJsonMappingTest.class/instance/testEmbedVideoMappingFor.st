tests
testEmbedVideoMappingFor
	| result jsonResult jsonString |
	jsonString := '{"url":"http://example.com/video.html","height":768,"width":1024}'.
	result := self read: jsonString as: DSEmbedVideo mappedTo: #embedVideoMappingFor:.
	self assert: result class equals: DSEmbedVideo.
	self assert: result url equals: 'http://example.com/video.html'.
	self assert: result height equals: 768.
	self assert: result width equals: 1024.
	jsonResult := self write: result mappedTo: #embedVideoMappingFor:.
	self assert: jsonResult equals: jsonString.