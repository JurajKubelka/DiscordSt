test - protocol - embed
testEmbedTitle
	builder := self newInstanceToBeTested 
		embedTitle: self anyString;
		yourself.
	self assert: builder post embed title equals: self anyString.