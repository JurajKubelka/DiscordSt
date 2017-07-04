test - protocol - basic
testContent
	builder := self newInstanceToBeTested 
		content: self anyString;
		yourself.
	self assert: builder post content equals: self anyString.