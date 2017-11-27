tests - files
testFileNameMorph
	client := self classToTest new 
		fileName: self anyString morph: World.
	self assert: client post mimeParts size equals: 1.
	self assert: client post mimeParts first fieldName equals: self anyString.
	self assert: client post mimeParts first fileName equals: self anyString.
	self assert: client post mimeParts first contents isCollection.