*Discord-Client-Tests
testClientPostMappingFor2
	| result jsonResult jsonString |
	jsonString := self classToTest jsonClientPost.
	result := self read: jsonString as: DSClientDataPost mappedTo: #clientPostMappingFor:.
	self assert: result class equals: DSClientDataPost.
	self assert: result content equals: 'the message contents (up to 2000 characters)'.
	self assert: result nonce equals: '1343243'.
	self assert: result isTextToSpeech.
	self assert: result embed class equals: DSEmbed.
	jsonResult := self write: result mappedTo: #clientPostMappingFor:.
	self assert: jsonResult equals: jsonString.