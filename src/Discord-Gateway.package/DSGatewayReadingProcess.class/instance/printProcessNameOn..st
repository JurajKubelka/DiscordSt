printing
printProcessNameOn: aStream
	aStream
		nextPutAll: self className.
	aStream nextPutAll: ' reading process'