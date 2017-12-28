instance creation
pharoVersion
	"Return an object that represents the Pharo version."
	^ self new 
		name: 'Pharo';
		value: (SystemVersion current version asString, 
			' - ', SystemVersion current highestUpdate asString, 
			' (', (Smalltalk wordSize = 4 ifTrue: [ '32' ] ifFalse: [ '64' ]), 'bits)');
		yourself