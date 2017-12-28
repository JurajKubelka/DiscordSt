printing
printOn: aStream
	aStream
		nextPutAll: 'Info: ';
		print: self name;
		nextPutAll: ' value: ';
		print: self value.