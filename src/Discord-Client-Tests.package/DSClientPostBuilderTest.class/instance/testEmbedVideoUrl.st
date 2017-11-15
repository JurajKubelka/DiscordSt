test - protocol - embed
testEmbedVideoUrl
	builder := self newInstanceToBeTested 
		embedVideoUrl: self anyString;
		yourself.
	self assert: builder post embed video url equals: self anyString.
