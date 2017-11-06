printing
printOn: aStream
	aStream 
		<< self typeName
		<< ': '
		<< (self name ifNil: [ '<nameless>' ])