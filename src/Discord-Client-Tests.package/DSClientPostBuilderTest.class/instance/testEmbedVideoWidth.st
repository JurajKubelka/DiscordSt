test - protocol - embed
testEmbedVideoWidth
	builder := self newInstanceToBeTested 
		embedVideoWidth: 42;
		yourself.
	self assert: builder post embed video width equals: 42.
