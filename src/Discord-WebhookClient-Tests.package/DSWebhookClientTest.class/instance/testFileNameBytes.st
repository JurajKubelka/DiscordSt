tests - files
testFileNameBytes
	client := self classToTest new 
		fileName: self anyString bytes: self bytes.
	self assert: client post mimeParts size equals: 1.
	self assert: client post mimeParts first fieldName equals: self anyString.
	self assert: client post mimeParts first fileName equals: self anyString.
	self assert: client post mimeParts first contents equals: self bytes.