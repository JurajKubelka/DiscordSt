tests - files
testFileNameBytes
	client := DSWebhookClient new 
		fileName: self anyString bytes: self bytes.
	self assert: client webhook fileParts size equals: 1.
	self assert: client webhook fileParts first fieldName equals: self anyString.
	self assert: client webhook fileParts first fileName equals: self anyString.
	self assert: client webhook fileParts first contents equals: self bytes.