test - protocol - embed
testEmbedImageWidth
	builder := self newInstanceToBeTested 
		embedImageWidth: 42;
		yourself.
	self assert: builder post embed image width equals: 42.
