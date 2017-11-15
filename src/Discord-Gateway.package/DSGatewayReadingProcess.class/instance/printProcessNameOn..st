printing
printProcessNameOn: aStream
	aStream
		nextPutAll: self className;
		nextPutAll: ' reading process'