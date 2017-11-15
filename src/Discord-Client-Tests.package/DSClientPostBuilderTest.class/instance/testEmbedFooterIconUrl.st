test - protocol - embed
testEmbedFooterIconUrl
	builder := self newInstanceToBeTested 
		embedFooterIconUrl: self anyString;
		yourself.
	self assert: builder post embed footer iconUrl equals: self anyString.
