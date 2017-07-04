test - protocol - embed
testEmbedThumbnailHeight
	builder := self newInstanceToBeTested 
		embedThumbnailHeight: 42;
		yourself.
	self assert: builder post embed thumbnail height equals: 42.
