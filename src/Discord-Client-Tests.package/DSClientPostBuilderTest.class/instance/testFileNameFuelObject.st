test - protocol - attachments
testFileNameFuelObject
	builder := self newInstanceToBeTested.
	builder fileName: self anyString fuelObject: self.
	self assert: builder post mimeParts size equals: 1.
	self assert: builder post mimeParts first fieldName equals: self anyString.
	self assert: builder post mimeParts first fileName equals: self anyString.
	self assert: builder post mimeParts first contents class equals: ByteArray.