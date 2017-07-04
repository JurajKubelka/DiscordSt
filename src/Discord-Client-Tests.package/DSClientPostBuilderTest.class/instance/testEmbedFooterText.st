test - protocol - embed
testEmbedFooterText
	builder := self newInstanceToBeTested 
		embedFooterText: self anyString;
		yourself.
	self assert: builder post embed footer text equals: self anyString.
