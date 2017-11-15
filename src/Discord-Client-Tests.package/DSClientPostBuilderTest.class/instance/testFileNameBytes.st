test - protocol - attachments
testFileNameBytes
	builder := self newInstanceToBeTested.
	builder fileName: self anyString bytes: self bytes.
	self assert: builder post fileParts size equals: 1.
	self assert: builder post fileParts first fieldName equals: self anyString.
	self assert: builder post fileParts first fileName equals: self anyString.
	self assert: builder post fileParts first contents equals: self bytes.