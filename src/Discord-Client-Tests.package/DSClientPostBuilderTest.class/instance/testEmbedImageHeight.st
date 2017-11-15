test - protocol - embed
testEmbedImageHeight
	builder := self newInstanceToBeTested 
		embedImageHeight: 42;
		yourself.
	self assert: builder post embed image height equals: 42.
