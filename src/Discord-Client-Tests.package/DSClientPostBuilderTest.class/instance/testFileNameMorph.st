test - protocol - attachments
testFileNameMorph
	"Check that the help icon is properly stored."
	builder := self newInstanceToBeTested.
	builder fileName: self anyString morph: World.
	self assert: builder post mimeParts size equals: 1.
	self assert: builder post mimeParts first fieldName equals: self anyString.
	self assert: builder post mimeParts first fileName equals: self anyString.
	self assert: builder post mimeParts first contents isCollection.