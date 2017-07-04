test - protocol - embed
testEmbedThumbnailUrl
	builder := self newInstanceToBeTested 
		embedThumbnailUrl: self anyString;
		yourself.
	self assert: builder post embed thumbnail url equals: self anyString.
