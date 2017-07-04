test - protocol - embed
testEmbedImageUrl
	builder := self newInstanceToBeTested 
		embedImageUrl: self anyString;
		yourself.
	self assert: builder post embed image url equals: self anyString.
