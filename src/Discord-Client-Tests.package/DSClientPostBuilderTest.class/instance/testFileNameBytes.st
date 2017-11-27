test - protocol - attachments
testFileNameBytes
	builder := self newInstanceToBeTested.
	builder fileName: self anyString bytes: self bytes.
	self assert: builder post mimeParts size equals: 1.
	self assert: builder post mimeParts first fieldName equals: self anyString.
	self assert: builder post mimeParts first fileName equals: self anyString.
	self assert: builder post mimeParts first contents equals: self bytes.