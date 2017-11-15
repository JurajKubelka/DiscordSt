test - protocol - embed
testEmbedProviderUrl
	builder := self newInstanceToBeTested 
		embedProviderUrl: self anyString;
		yourself.
	self assert: builder post embed provider url equals: self anyString.
