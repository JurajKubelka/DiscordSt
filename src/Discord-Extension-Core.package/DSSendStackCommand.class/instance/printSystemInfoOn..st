printing
printSystemInfoOn: aStream 
	aStream 
		<< 'Image: ';
		<< SystemVersion current version asString;
		<< ' [';
		<< Smalltalk lastUpdateString asString;
		<< ' (';
		<< (Smalltalk wordSize = 4 ifTrue: [ '32' ] ifFalse: [ '64' ]);
		<< 'bits)';
		<< ']';
		<< String crlf;
		<< 'VM: '; 
		<< Smalltalk os name asString;
		<< ' - ';	
		<< Smalltalk os subtype asString;
		<< ' - ';
		<< Smalltalk os version asString;
		<< String crlf.
	Smalltalk vm version asString linesDo: [ :line |
		aStream << String tab << line << String crlf ].