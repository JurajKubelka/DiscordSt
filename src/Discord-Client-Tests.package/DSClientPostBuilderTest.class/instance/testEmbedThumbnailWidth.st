test - protocol - embed
testEmbedThumbnailWidth
	builder := self newInstanceToBeTested 
		embedThumbnailWidth: 42;
		yourself.
	self assert: builder post embed thumbnail width equals: 42.
