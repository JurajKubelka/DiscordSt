printing
printOn: aStream
	aStream
		nextPutAll: 'Package: ';
		nextPutAll: (self package ifNil: [ '<nameless>' ] ifNotNil: #asString);
		space.
	self expertise
		ifNil: [ aStream nextPutAll: 'with no experts' ]
		ifNotNil: [ :aCollection | 
			aStream
				nextPutAll: 'with ';
				print: aCollection size;
				space;
				nextPutAll: ('expert' asPluralBasedOn: aCollection size) ]