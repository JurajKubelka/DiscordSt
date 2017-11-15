test - protocol - embed
testEmbedVideoHeight
	builder := self newInstanceToBeTested 
		embedVideoHeight: 42;
		yourself.
	self assert: builder post embed video height equals: 42.
