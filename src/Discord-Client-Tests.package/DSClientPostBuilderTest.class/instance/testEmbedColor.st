test - protocol - embed
testEmbedColor
	builder := self newInstanceToBeTested 
		embedColor: self color;
		yourself.
	self assert: builder post embed color equals: self color.