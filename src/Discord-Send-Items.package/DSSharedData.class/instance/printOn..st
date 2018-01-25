printing
printOn: aStream
	aStream 
		nextPutAll: 'Type: '; print: self type;
		nextPutAll: ' fileName: '; print: self fileName.
	self url 
		ifNil: [ aStream nextPutAll: ' without an URL' ]
		ifNotNil: [ aStream nextPutAll: ' with an URL' ]