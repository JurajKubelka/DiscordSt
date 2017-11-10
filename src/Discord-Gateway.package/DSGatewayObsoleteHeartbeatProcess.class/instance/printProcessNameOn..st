printing
printProcessNameOn: aStream
	aStream
		nextPutAll: self className.
	aStream nextPutAll: ' heartbeat process'