tests
testFileNameMorph
	"Check that the help icon is properly stored."
	client := self newClient.
	client fileName: self anyString morph: World.
	self assert: client post fileParts size equals: 1.
	self assert: client post fileParts first fieldName equals: self anyString.
	self assert: client post fileParts first fileName equals: self anyString.
	self assert: client post fileParts first contents isCollection.