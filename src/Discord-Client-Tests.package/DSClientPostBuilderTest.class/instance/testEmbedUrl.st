test - protocol - embed
testEmbedUrl
	builder := self newInstanceToBeTested 
		embedUrl: self anyString;
		yourself.
	self assert: builder post embed url equals: self anyString.