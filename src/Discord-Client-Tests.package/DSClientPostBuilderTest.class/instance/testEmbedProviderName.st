test - protocol - embed
testEmbedProviderName
	builder := self newInstanceToBeTested 
		embedProviderName: self anyString;
		yourself.
	self assert: builder post embed provider name equals: self anyString.
