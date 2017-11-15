printing
printProcessNameOn: aStream
	aStream
		nextPutAll: self className;
		nextPutAll: ' heartbeat process'