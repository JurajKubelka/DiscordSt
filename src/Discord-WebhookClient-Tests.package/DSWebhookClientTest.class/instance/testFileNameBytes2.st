tests - files
testFileNameBytes2
	client := self classToTest new 
		fileName: self anyString bytes: self bytes;
		fileName: self anyString bytes: self bytes.
	self assert: client post mimeParts size equals: 2.
	self assert: client post mimeParts first fieldName equals: self anyString.
	self assert: client post mimeParts first fileName equals: self anyString.
	self assert: client post mimeParts first contents equals: self bytes.
	self assert: client post mimeParts second fieldName equals: self anyString.
	self assert: client post mimeParts second fileName equals: self anyString.
	self assert: client post mimeParts second contents equals: self bytes.