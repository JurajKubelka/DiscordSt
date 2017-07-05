printing
printOn: aStream
	aStream
		nextPutAll: 'Expert: ';
		nextPutAll: (self developer ifNil: [ '<nameless>' ] ifNotNil: #asString);
		space.
	self coeficient ifNil: [ aStream nextPut: $x ] ifNotNil: [ self coeficient printOn: aStream showingDecimalPlaces: 1 ].
	aStream nextPut: $%