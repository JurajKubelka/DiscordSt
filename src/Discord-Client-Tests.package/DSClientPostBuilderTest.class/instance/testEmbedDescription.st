test - protocol - embed
testEmbedDescription
	builder := self newInstanceToBeTested 
		embedDescription: self anyString;
		yourself.
	self assert: builder post embed description equals: self anyString.