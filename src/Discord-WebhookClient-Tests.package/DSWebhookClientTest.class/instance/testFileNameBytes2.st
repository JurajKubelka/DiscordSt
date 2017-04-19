tests - files
testFileNameBytes2
	client := DSWebhookClient new 
		fileName: self anyString bytes: self bytes;
		fileName: self anyString bytes: self bytes.
	self assert: client webhook fileParts size equals: 2.
	self assert: client webhook fileParts first fieldName equals: self anyString.
	self assert: client webhook fileParts first fileName equals: self anyString.
	self assert: client webhook fileParts first contents equals: self bytes.
	self assert: client webhook fileParts second fieldName equals: self anyString.
	self assert: client webhook fileParts second fileName equals: self anyString.
	self assert: client webhook fileParts second contents equals: self bytes.